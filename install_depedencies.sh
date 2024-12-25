#!/bin/bash
# Обновляем список пакетов
sudo apt update && sudo apt upgrade -y

sudo apt install ros-humble-desktop

source /opt/ros/humble/setup.bash

cd ~/ros2_ws/src
git clone https://github.com/ros2/rclcpp.git
git clone https://github.com/ros2/common_interfaces.git
git clone https://github.com/ros2/geometry2.git
git clone https://github.com/ros2/rviz_ros2.git
git clone https://github.com/ros2/examples.git
git clone https://github.com/ros-simulation/gazebo_ros_pkgs.git

cd ~/ros2_ws/
colcon build

echo "source ~/ros2_ws/install/setup.bash" >> ~/.bashrc
source ~/.bashrc
