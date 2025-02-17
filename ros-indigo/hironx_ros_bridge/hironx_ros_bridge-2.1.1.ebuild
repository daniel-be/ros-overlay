# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS-OpenRTM interfacing package for the opensource version of Kawada\'s Hir[...]"
HOMEPAGE="http://ros.org/wiki/hironx_ros_bridge"
SRC_URI="https://github.com/tork-a/rtmros_hironx-release/archive/release/indigo/${PN}/2.1.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="( BSD CC-BY-SA-3.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/control_msgs
	ros-indigo/hrpsys_ros_bridge
	ros-indigo/moveit_commander
	ros-indigo/openni2_launch
	ros-indigo/rosbash
	ros-indigo/roslang
	ros-indigo/roslib
	ros-indigo/rospy
	ros-indigo/tf
	sci-visualization/gnuplot
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/mk
	ros-indigo/rosbuild
	ros-indigo/roslint
	app-arch/unzip
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
