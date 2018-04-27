sudo modprobe bcm2835-v4l2

sudo apt-get -y update
sudo apt-get -y install ffmpeg v4l-utils
sudo apt-get -y install libmariadbclient18 libpq5
wget https://github.com/Motion-Project/motion/releases/download/release-4.1.1/pi_stretch_motion_4.1.1-1_armhf.deb


sudo dpkg -i pi_stretch_motion_4.1.1-1_armhf.deb
sudo apt-get -y install python-pip python-dev libssl-dev libcurl4-openssl-dev libjpeg-dev
sudo pip install motioneye
sudo mkdir -p /etc/motioneye
sudo cp /usr/local/share/motioneye/extra/motioneye.conf.sample /etc/motioneye/motioneye.conf
sudo mkdir -p /var/lib/motioneye
sudo cp /usr/local/share/motioneye/extra/motioneye.systemd-unit-local /etc/systemd/system/motioneye.service
sudo systemctl daemon-reload
sudo systemctl enable motioneye
sudo systemctl start motioneye
