sudo apt update
sudo apt -y install net-tools
sudo apt -y install git leafpad
cd Desktop/
git clone https://github.com/alexa/alexa-avs-sample-app.git
sudo apt-get -y install vlc browser-plugin-vlc
sudo apt-get -y install nodejs
sudo apt-get -y install default-jdk
sudo apt-get -y install maven
cd alexa-avs-sample-app/
leafpad automated_install.sh
