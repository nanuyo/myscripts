#!/bin/sh

# <Cube eye 2.0 install to Ubuntu ARM>

# /media/hjpark/Data/Cube_Eye_Linux-v2.0_160810

cd ~/mtf_linux_2.0-API/
sudo cp cube-eye.rules /etc/udev/rules.d/216-cube-eye.rules
sudo rm -f /usr/lib/libMTF_API.so* /usr/local/lib/libMTF_API.so*

cd ../mtf_arm_2.0-API/lib-linux-gnueabihf/
sudo cp libMTF_API.so.1 /usr/local/lib
sudo ln -s /usr/local/lib/libMTF_API.so.1 /usr/local/lib/libMTF_API.so
sudo cp libMTF_API.so.1 /usr/lib
sudo ln -s /usr/lib/libMTF_API.so.1 /usr/lib/libMTF_API.so

