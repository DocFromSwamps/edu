rm -f /etc/samba/smb.conf
samba-tool domain provision --use-rfc2307 --interactive
cp /var/lib/samba/private/krb5.conf /etc/krb5.conf
rm -rf /etc/samba/smb.conf
cp /home/git/edu/smb.conf /etc/samba/smb.conf
systemctl enable --now samba
samba-tool group add hq
samba-tool user create user1.hq "P@ssw0rd" --home-directory=/home/AU-TEAM/user1.hq --uid=user1.hq
samba-tool user create user2.hq "P@ssw0rd" --home-directory=/home/AU-TEAM/user2.hq --uid=user2.hq
samba-tool group addmembers hq user1.hq
samba-tool group addmembers hq user2.hq
samba-tool group addmembers "Account Operators" hq
samba-tool group addmembers "Allowed RODC Password Replication Group" hq
realm join -U user1.hq au-team.irpo
realm join -U user2.hq au-team.irpo
realm permit -g hq
echo "%hq ALL=(ALL) NOPASSWD:/bin/cat,/bin/grep,/bin/id" >> /etc/sudoers.d/hq
rm -rf /opt/import_users.sh
cp /home/git/edu/import_users.sh /opt/import_users.sh
chmod +x /opt/import_users.sh
systemctl restart samba
