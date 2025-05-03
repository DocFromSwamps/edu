#adduser sshuser -s /bin/bash
#passwd sshuser
#usermod -aG wheel sshuser
#echo "sshuser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
#systemctl enable --now sshd
#systemctl restart sshd
#systemctl status sshd

#ssh-keygen -t rsa
#ls /root/.ssh
#ssh-copy-id sshuser@192.168.0.1 -p 2024
#ssh-copy-id sshuser@192.168.0.65
#ssh-copy-id net_admin@172.16.4.1
#ssh-copy-id net_admin@172.16.5.1

#nano /etc/ansible/inv

[hq] 
192.168.0.1 ansible_port=2024 ansible_user=sshuser
192.168.0.65 ansible_user=sshuser
172.16.4.1 ansible_user=net_admin

[br]
172.16.5.1 ansible_user=net_admin

#nano /etc/ansible/ansible.cfg

interpreter_python=auto_silent

#ansible all -i /etc/ansible/inv -m ping
