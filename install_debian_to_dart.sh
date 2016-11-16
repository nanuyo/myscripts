#!/bin/sh
sudo apt-get install -y binfmt-support qemu qemu-user-static debootstrap kpartx
sudo apt-get install -y lvm2 dosfstools gpart binutils git lib32ncurses5-dev python-m2crypto
sudo apt-get install -y gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat libsdl1.2-dev
sudo apt-get install -y autoconf libtool libglib2.0-dev libarchive-dev
sudo apt-get install -y python-git xterm sed cvs subversion coreutils texi2html bc
sudo apt-get install -y docbook-utils python-pysqlite2 help2man make gcc g++ desktop-file-utils libgl1-mesa-dev
sudo apt-get install -y libglu1-mesa-dev mercurial automake groff curl lzop asciidoc u-boot-tools mtd-utils

cd ~
git clone https://github.com/varigit/debian-var.git -b debian_jessie_varsommx6_var01 var_som_mx6_debian

cd ~/var_som_mx6_debian
./make_var_som_mx6_debian.sh -c deploy

#sudo ./make_var_som_mx6_debian.sh -c all | tee 2.log

sudo ./make_var_som_mx6_debian.sh -c bootloader
sudo ./make_var_som_mx6_debian.sh -c kernel
sudo ./make_var_som_mx6_debian.sh -c modules
sudo ./make_var_som_mx6_debian.sh -c rootfs
sudo ./make_var_som_mx6_debian.sh -c rtar

sudo ./make_var_som_mx6_debian.sh -c sdcard -d /dev/sdc


