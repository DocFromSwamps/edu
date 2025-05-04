realm join -U user1.hq au-team.irpo
realm permit -g hq
echo "%hq ALL=(ALL) NOPASSWD:/bin/cat,/bin/grep,/bin/id" >> /etc/sudoers.d/hq
rm -rf /opt/import_users.sh
cp /home/git/edu/import_users.sh /opt/import_users.sh
chmod +x /opt/import_users.sh
systemctl restart samba
