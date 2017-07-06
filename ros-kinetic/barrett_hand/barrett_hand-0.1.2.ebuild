# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The barrett_hand package contains all the components to control the Barrett Hand'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RobotnikAutomation/barrett_hand-release/archive/release/kinetic/barrett_hand/0.1.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/bhand_controller
	ros-kinetic/rqt_bhand
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

