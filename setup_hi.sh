sudo apt-get update
sudo apt-get install git make zlib1g-dev:i386 cpp gcc-multilib \
g++ g++-4.8-multilib cpp-4.8 g++-4.8 gcc-4.8 binutils gnupg flex \
lib32ncurses5-dev bison gperf build-essential zip curl libc6-dev \
x11proto-core-dev libx11-dev lib32readline6-dev zlib1g-dev \
lib32z-dev libgl1-mesa-dev g++-multilib mingw32 tofrodos gettext \
libxml2-utils xsltproc u-boot-tools

sudo apt-get install gcc-4.4 g++-4.4 g++-4.4-multilib gcc-4.4-multilib
sudo rm /usr/bin/gcc
sudo ln -s /usr/bin/gcc-4.4 /usr/bin/gcc
sudo rm /usr/bin/g++
sudo ln -s /usr/bin/g++-4.4 /usr/bin/g++

sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install openjdk-8-jdk

sudo rm /bin/sh;sudo ln -s /bin/bash /bin/sh

sudo sed -i -e '$a\
*    -     nofile    8192' /etc/security/limits.conf

sudo sed -i -e '$a\
umask 022' /etc/profile

sudo chmod a+s /bin/mknod
sudo chmod a+s /bin/chmod
sudo chmod a+s /bin/chown

sudo pkill X





