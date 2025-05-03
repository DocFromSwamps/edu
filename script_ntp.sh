#nano /etc/chrony.conf

rtcsync
server 127.0.0.1 iburst prefer
Local stratum 5
allow 192.168.0.0/26
allow 192.168.0.64/27
allow 192.168.0.96/29
allow 192.168.3.0/27

#systemctl enable --now chronyd
#systemctl restart chronyd

#nano /etc/chrony.conf

rtcsync
server 192.168.0.62 iburst prefer

#systemctl enable --now chronyd
#systemctl restart chronyd

#chronyс sources
