sudo su -
apt update
apt install -y openssh-server
apt install -y samba
smbpasswd -a hjpark
cp /etc/samba/smb.conf ~
echo "[files]" >> /etc/samba/smb.conf
echo "comment = hj ims pc" >> /etc/samba/smb.conf
echo "path = /home/hjpark" >> /etc/samba/smb.conf
echo "writeable = yes" >> /etc/samba/smb.conf
echo "browseable = yes" >> /etc/samba/smb.conf
echo "valid users = hjpark, root" >> /etc/samba/smb.conf
service smbd restart

apt-get install -y nfs-common nfs-kernel-server portmap
chmod 777 /home/hjpark/

mkdir /media/hjpark/nfs-ims-file-server
mkdir /media/hjpark/WD2TB

echo "192.168.0.250:/imslab /home/hjpark/nfs-ims-file-server/  nfs rsize=8192,wsize=8192,timeo=14,intr,bg" >> /etc/fstab
echo "/dev/sdb1     /media/hjpark/WD2TB ntfs defaults 1 2" >> /etc/fstab
mount -a


#midnight commander
apt install -y mc
apt install -y fslint
apt install -y filezilla
apt install -y git
git config --global user.email "hjparkg71@gmail.com"
git config --global user.name "hjpark"

su - hjpark
