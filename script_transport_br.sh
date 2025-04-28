apt-get install nftables -y
systemctl enable --now nftables
rm -rf /etc/nftables/nftables.nft
cp /home/git/edu/nftables_br.nft /etc/nftables/nftables.nft
echo "  chain prerouting {" >> /etc/nftables/nftables.nft
echo "    type nat hook prerouting priority filter;" >> /etc/nftables/nftables.nft
echo "    ip daddr 172.16.5.1 tcp dport 80 dnat ip to 192.168.3.1:8080" >> /etc/nftables/nftables.nft
echo "    ip daddr 172.16.5.1 tcp dport 22 dnat ip to 192.168.3.1:2024" >> /etc/nftables/nftables.nft
echo "  }" >> /etc/nftables/nftables.nft
echo "}" >> /etc/nftables/nftables.nft
systemctl restart nftables
