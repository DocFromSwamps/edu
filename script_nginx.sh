apt-get install nginx -y
systemctl enable --now nginx
systemctl stop ahttpd
systemctl stop httpd2
rm -rf /etc/nginx/nginx.conf
cp /home/git/edu/nginx.conf /etc/nginx/nginx.conf
systemctl restart nginx
