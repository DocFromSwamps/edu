apt-get update
apt-get install -y apache2
apt-get install -y php8.2
apt-get remove -y php8.1
apt-get remove -y php8.0
apt-get install -y php8.2-mysqli php8.2-xml php8.2-intl php8.2-zip php8.2-curl php8.2-mbstring php8.2-soap php8.2-ldap php8.2-bcmath
apt-get install -y apache2-mod_php8.2
systemctl enable --now httpd2
systemctl start mariadb
mysql_secure_installation
mysql -u root -p

create database moodledb character set utf8mb4 collate utf8mb4_unicode_ci;
create user 'moodle'@'localhost' identified by 'password';
grant all privileges on moodledb.* to 'moodle'@'localhost';
flush privileges;
exit;
