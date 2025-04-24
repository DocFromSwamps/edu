apt-get update
apt-get install -y apache2
apt-get install -y php8.1
apt-get remove -y php8.0
apt-get install -y php8.1-mysqli php8.1-xml php8.1-intl php8.1-zip php8.1-curl php8.1-mbstring php8.1-soap php8.1-ldap php8.1-bcmath
apt-get install -y apache2-mod_php8.1
systemctl enable --now httpd2
systemctl start mariadb
mysql_secure_installation
mysql -u root -p

create database moodledb character set utf8mb4 collate utf8mb4_unicode_ci;
create user 'moodle'@'localhost' identified by 'password';
grant all privileges on moodledb.* to 'moodle'@'localhost';
flush privileges;
exit;
