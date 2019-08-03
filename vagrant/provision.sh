#!/bin/bash

apt-get update && apt-get upgrade
apt-get install -y --no-install-recommends python3 python3-pip python3-setuptools python3-dev mysql-server libmysqlclient-dev build-essential
pip3 install pipenv
cd /home/vagrant/asakharov && pipenv sync --dev

mysql_tzinfo_to_sql /usr/share/zoneinfo | mysql -D mysql -u root
mysql -u root < /home/vagrant/asakharov/vagrant/mysql_prov.sql
mysql -u root django < /home/vagrant/asakharov/vagrant/dump.sql
cd /home/vagrant/asakharov && pipenv run python3 manage.py makemigrations && pipenv run python3 manage.py migrate

rm -rf /home/vagrant/asakharov/static
mkdir -p /home/vagrant/asakharov/static /home/vagrant/asakharov/media
cd /home/vagrant/asakharov && pipenv run python3 manage.py collectstatic

cat << EOF > /etc/systemd/system/gunicorn.service
[Unit]
Description=Gunicorn service
After=network.target

[Service]
Environment="DJANGO_SETTINGS_MODULE=core.settings.dev"
PIDFile=/run/gunicorn/pid
Type=simple
WorkingDirectory=/home/vagrant/asakharov
ExecStart=/usr/local/bin/pipenv run gunicorn passenger_wsgi:application --bind 0.0.0.0:8000 --workers 3
ExecReload=/bin/kill -s HUP $MAINPID
ExecStop=/bin/kill -s TERM $MAINPID

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl enable gunicorn.service
systemctl start gunicorn.service
