Repository for asakharov.ru

Running as easy as

```bash
git clone https://github.com/sakharovaan/asakharov.ru.git
cd asakharov.ru
vagrant up
```

Development

```bash
# for dumping 
sudo mysqldump -u root django | gzip > /home/vagrant/asakharov/vagrant/dump.sql.gz
```