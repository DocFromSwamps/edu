fdisk /dev/sda
fdisk /dev/sdc
fdisk /dev/sdb
mdadm --create --verbose /dev/md0 -l 5 -n 3 /dev/sda1 /dev/sdc1 /dev/sdb1
mkfs.ext4 /dev/md0
mkdir /raid5
mount /dev/md0 /raid5
echo "/dev/md0	/raid5	ext4	defaults	0	0" >> /etc/fstab
mkdir /raid5/nfs
apt-get update
apt-get install nfs-server
systemctl enable --now nfs
echo "/raid5/nfs 192.168.0.64/27(rw,subtree_check)" >> /etc/exports
export -a

