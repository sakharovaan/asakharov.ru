#!/bin/bash

set -exo pipefail # stop on errors, print all commands
SITE_ROOT="/home/vagrant/asakharov"

apt-get update && apt-get upgrade -y
apt-get install -y --no-install-recommends python3 python3-pip python3-setuptools python3-dev mysql-server libmysqlclient-dev build-essential gettext
pip3 install pipenv
cd ${SITE_ROOT} && pipenv sync --dev

mysql_tzinfo_to_sql /usr/share/zoneinfo | mysql -D mysql -u root
mysql -u root < ${SITE_ROOT}/vagrant/mysql_prov.sql
zcat ${SITE_ROOT}/vagrant/dump.sql.gz | mysql -u root django
cd ${SITE_ROOT} && pipenv run python3 manage.py makemigrations && pipenv run python3 manage.py migrate

rm -rf ${SITE_ROOT}/static
mkdir -p ${SITE_ROOT}/static ${SITE_ROOT}/media
cd ${SITE_ROOT} && pipenv run python3 manage.py collectstatic && pipenv run python3 manage.py compilemessages

cat << EOF > /etc/rsyslog.d/99-gunicorn.conf
:programname, startswith, "pipenv", ${SITE_ROOT}/gunicorn.log
EOF
touch ${SITE_ROOT}/gunicorn.log
chmod 666 ${SITE_ROOT}/gunicorn.log
service rsyslog restart

cat << EOF > /etc/systemd/system/gunicorn.service
[Unit]
Description=Gunicorn service
After=network.target

[Service]
Environment="DJANGO_SETTINGS_MODULE=core.settings.dev"
PIDFile=/run/gunicorn/pid
Type=simple
WorkingDirectory=${SITE_ROOT}
ExecStart=/usr/local/bin/pipenv run gunicorn passenger_wsgi:application --bind 0.0.0.0:8000 --workers 3
ExecReload=/bin/kill -s HUP $MAINPID
ExecStop=/bin/kill -s TERM $MAINPID

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl enable gunicorn.service
systemctl start gunicorn.service
