#!/bin/sh

sudo apt-get -y install git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib 
sudo apt-get -y install libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils 
sudo apt-get -y install xsltproc unzip mtd-utils u-boot-tools lzop liblzo2-2 liblzo2-dev zlib1g-dev liblz-dev uuid uuid-dev android-tools-fsutils


sudo apt-get update

sudo apt-get remove openjdk-* icedtea-*
sudo sed -i '$ a export PATH=~/bin:$PATH' ~/.bashrc
sudo sed -i '$ a export USE_CCACHE=1' ~/.bashrc
source ~/.bashrc
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install openjdk-7-jdk



sudo update-alternatives --config java
sudo update-alternatives --config javac

mkdir ~/var_m_601_210
cd ~/var_m_601_210
tar xvf ~/Downloads/android_M6.0.1_2.1.0_source.tar.gz

mkdir ~/var_m_601_210/m_601_210_build
cd  ~/var_m_601_210/m_601_210_build
mkdir ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
export PATH=~/bin:$PATH
repo init -u https://android.googlesource.com/platform/manifest -b android-6.0.1_r22
repo sync -j4


mkdir -p ~/var_m_601_210/m_601_210_build/bootable/bootloader
cd ~/var_m_601_210/m_601_210_build/bootable/bootloader
git clone https://github.com/varigit/uboot-imx.git -b imx_v2015.04_4.1.15_1.1.0_ga_var01
cd ~/var_m_601_210/m_601_210_build
git clone https://github.com/varigit/linux-2.6-imx.git kernel_imx -b m6.0.1_2.1.0-ga-var01

cd ~/var_m_601_210/m_601_210_build
source ../android_M6.0.1_2.1.0_source/code/M6.0.1_2.1.0/and_patch.sh

c_patch  ../android_M6.0.1_2.1.0_source/code/M6.0.1_2.1.0 imx_M6.0.1_2.1.0


cd ~/var_m_601_210
git clone https://github.com/varigit/MX6x-android.git -b m6.0.1_2.1.0-ga-var01 variscite
variscite/install

cd ~/var_m_601_210/m_601_210_build
source build/envsetup.sh
lunch var_mx6-eng
#lunch var_mx6-user

rm out/target/product/var_mx6/recovery/root/fstab* out/target/product/var_mx6/root/fstab*
make -j4 BUILD_TARGET_DEVICE=sd 2>&1 | tee build1-1.log
make -j4 BUILD_TARGET_DEVICE=emmc 2>&1 | tee build1-1.log


