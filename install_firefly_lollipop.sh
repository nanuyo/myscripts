Don't run it, just command step by step

sudo timedatectl set-timezone Asia/Seoul
sudo apt-get update
sudo apt-get install openssh-server

sudo apt-get install openjdk-7-jdk
sudo update-alternatives --config java
sudo update-alternatives --config javac
sudo apt-get install git-core gnupg flex bison gperf libsdl1.2-dev  libesd0-dev libwxgtk2.8-dev squashfs-tools build-essential zip curl  libncurses5-dev zlib1g-dev pngcrush schedtool libxml2 libxml2-utils  xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev  lib32readline-gplv2-dev gcc-multilib libswitch-perl  libssl1.0.0 libssl-dev
cd ~
mkdir firefly-rk3288-lollipop
cd firefly-rk3288-lollipop/
tar xf ~/firefly-rk3288_android5.1_git_20150910.tar
git reset --hard
# git remote add bitbucket https://bitbucket.org/T-Firefly/firenow-lollipop.git
git pull bitbucket Firefly-RK3288:Firefly-RK3288

cd ~/firefly-rk3288-lollipop/kernel
make firefly-rk3288_defconfig
make -j8 firefly-rk3288.img

cd ..
. build.sh
make -j8
