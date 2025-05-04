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
systemctl restart samba
