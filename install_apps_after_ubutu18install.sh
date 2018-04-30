sudo add-apt-repository ppa:stebbins/handbrake-releases
sudo apt update
sudo apt-get install -y handbrake-gtk



sudo apt install -y openssh-server
sudo apt install -y samba
sudo smbpasswd -a hjpark
sudo cp /etc/samba/smb.conf ~
sudo gedit /etc/samba/smb.conf
sudo service smbd restart

sudo apt-get install -y nfs-common nfs-kernel-server portmap
sudo chmod 777 /home/hjpark/
sudo mkdir /media/hjpark/nfs-ims-imslab
sudo gedit /etc/fstab
#192.168.0.250:/imslab /home/hjpark/nfs-ims-imslab/  nfs rsize=8192,wsize=8192,timeo=14,intr,bg
sudo mount -a


#midnight commander
sudo apt install -y mc
sudo apt install -y fslint
sudo apt install -y filezilla
sudo apt install -y git
sudo git config --global user.email "hjparkg71@gmail.com"
sudo git config --global user.name "hjpark"


#nvidia driver 설치
sudo apt-get install -y nvidia-352
#KVM permisiion for AndroidStudio
sudo apt install qemu-kvm cpu-checker
kvm-ok
sudo addgroup kvm
sudo usermod -a -G kvm hjpark
sudo chgrp kvm /dev/kvm
sudo gedit /etc/udev/rules.d/60-qemu-kvm.rules
#KERNEL=="kvm", GROUP="kvm", MODE="0660"

reboot
