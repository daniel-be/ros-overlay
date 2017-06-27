# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="ROS wrapper for the youBot driver"
HOMEPAGE="http://www.youbot-store.com"
SRC_URI="https://github.com/youbot-release/youbot_driver_ros_interface-release/archive/release/indigo/youbot_driver_ros_interface/1.1.1-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="|| ( LGPL-2 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/actionlib
    ros-indigo/brics_actuator
    ros-indigo/control_msgs
    ros-indigo/diagnostic_msgs
    ros-indigo/geometry_msgs
    ros-indigo/nav_msgs
    ros-indigo/pr2_msgs
    ros-indigo/rosconsole
    ros-indigo/roscpp
    ros-indigo/std_msgs
    ros-indigo/std_srvs
    ros-indigo/tf
    ros-indigo/trajectory_msgs
    ros-indigo/youbot_driver
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="/${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DCATKIN_ENABLE_TESTING=OFF
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-indigo
        -DCATKIN_BUILD_BINARY_PACAKGE=1

     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
