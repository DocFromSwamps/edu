git clone -b MOODLE_405_STABLE git://git.moodle.org/moodle.git
cd moodle
git branch --track MOODLE_405_STABLE origin/MOODLE_405_STABLE
git checkout MOODLE_405_STABLE
cd
cp -R moodle /var/www/html
mkdir /var/moodledata
chmod 777 /var/moodledata
chown -R apache2:apache2 /var/www/html/moodle
chmod -R 755 /var/www/html/moodle
rm -rf /etc/httpd2/conf/sites-available/moodle.conf
cp /home/git/edu/moodle.conf /etc/httpd2/conf/sites-available/moodle.conf
ln -s /etc/httpd2/conf/sites-available/moodle.conf /etc/httpd2/conf/sites-enabled/
apachectl configtest
echo "max_inputs_vars = 5000" >> /etc/php/8.1/apache2-mod_php/php.ini
systemctl restart httpd2
