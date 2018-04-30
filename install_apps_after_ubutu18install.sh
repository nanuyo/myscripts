sudo add-apt-repository ppa:stebbins/handbrake-releases
sudo apt update
sudo apt-get install handbrake-gtk



sudo apt install -y openssh-server
sudo apt install -y samba
sudo smbpasswd -a hjpark
sudo cp /etc/samba/smb.conf ~
sudo echo "[files]" >> /etc/samba/smb.conf
sudo echo "comment = hj ims pc" >> /etc/samba/smb.conf
sudo echo "path = /home/hjpark" >> /etc/samba/smb.conf
sudo echo "writeable = yes" >> /etc/samba/smb.conf
sudo echo "browseable = yes" >> /etc/samba/smb.conf
sudo echo "valid users = hjpark, root" >> /etc/samba/smb.conf
sudo service smbd restart

sudo apt-get install -y nfs-common nfs-kernel-server portmap
sudo chmod 777 /home/hjpark/

sudo mkdir /media/hjpark/nfs-ims-file-server
sudo mkdir /media/hjpark/WD2TB

sudo echo "192.168.0.250:/imslab /home/hjpark/nfs-ims-file-server/  nfs rsize=8192,wsize=8192,timeo=14,intr,bg" >> /etc/fstab
sudo echo "/dev/sdb1     /media/hjpark/WD2TB ntfs defaults 1 2" >> /etc/fstab
sudo mount -a


#midnight commander
sudo apt install -y mc
sudo apt install -y fslint
sudo apt install -y filezilla
sudo apt install -y git
sudo git config --global user.email "hjparkg71@gmail.com"
sudo git config --global user.name "hjpark"
