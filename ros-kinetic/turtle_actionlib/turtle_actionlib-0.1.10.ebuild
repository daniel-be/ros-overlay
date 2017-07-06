# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'turtle_actionlib demonstrates how to write an action server and client with the '"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/common_tutorials-release/archive/release/kinetic/turtle_actionlib/0.1.10-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/angles
	ros-kinetic/geometry_msgs
	ros-kinetic/message_runtime
	ros-kinetic/rosconsole
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	ros-kinetic/turtlesim
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

