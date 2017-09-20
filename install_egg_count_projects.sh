sudo apt -y update
sudo apt install -y git cmake libopencv-dev
git clone http://github.com/nanuyo/egg_count_projects

cd egg_count_projects
cd hough_circle/
rm build/ -rf
mkdir build
cd build
cmake ..
make
cd ../../img_sub/
rm build/ -rf
mkdir build
cd build/
cmake ..
make
