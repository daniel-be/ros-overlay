# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="URDF description, Gazebo simulation, navigation, bringup launch files, mess[...]"
HOMEPAGE="https://github.com/dfki-ric/mir_robot"
SRC_URI="https://github.com/uos-gbp/${PN}-release/archive/release/lunar/${PN}/1.0.3-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/mir_actions
	ros-lunar/mir_description
	ros-lunar/mir_driver
	ros-lunar/mir_dwb_critics
	ros-lunar/mir_gazebo
	ros-lunar/mir_msgs
	ros-lunar/mir_navigation
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
