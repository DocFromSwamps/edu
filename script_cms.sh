apt-get update
systemctl enable --now httpd2
systemctl start mariadb
mysql_secure_installation
mysql -u root -p

create database moodledb character set utf8;
create user 'moodle'@'localhost' identified by 'password';
grant all privileges on moodledb.* to 'moodle'@'localhost';
flush privileges;
exit;
