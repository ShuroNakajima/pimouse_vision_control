#!/bin/bash -xve

sudo apt-get update
sudo apt-get install libopencv-dev python-opencv

sudo apt-get install ros-indigo-cv-bridge
sudo apt-get install ros-indigo-cv-camera

#sync and make
rsync -av ./ ~/catkin_ws/src/pimouse_vision_control/

cd ~/catkin_ws/src/
git clone --depth=1 https://github.com/ShuroNakajima/pimouse_ros.git

cd ~/catkin_ws
catkin_make

