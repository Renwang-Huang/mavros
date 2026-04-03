#!/bin/bash

ROS_DISTRO="humble"

sudo apt update

sudo apt install -y \
    ros-$ROS_DISTRO-mavros-msgs \
    ros-$ROS_DISTRO-geographic-msgs \
    ros-$ROS_DISTRO-mavlink \
    ros-$ROS_DISTRO-libmavconn \
    ros-$ROS_DISTRO-eigen-stl-containers \
    ros-$ROS_DISTRO-diagnostic-updater \
    ros-$ROS_DISTRO-tf2-eigen \
    ros-$ROS_DISTRO-tf2-ros \
    ros-$ROS_DISTRO-angles

sudo apt install -y libgeographic-dev geographiclib-tools

wget -q https://raw.githubusercontent.com/mavlink/mavros/master/mavros/scripts/install_geographiclib_datasets.sh
sudo bash ./install_geographiclib_datasets.sh
rm install_geographiclib_datasets.sh

sudo usermod -a -G dialout $USER
