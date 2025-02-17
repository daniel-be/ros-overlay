# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains adapters for using \`nav_core\` plugins as \`nav_core[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/locusrobotics/robot_navigation-release/archive/release/indigo/${PN}/0.2.5-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/costmap_2d
	ros-indigo/geometry_msgs
	ros-indigo/nav_2d_msgs
	ros-indigo/nav_2d_utils
	ros-indigo/nav_core
	ros-indigo/nav_core2
	ros-indigo/nav_grid
	ros-indigo/nav_msgs
	ros-indigo/pluginlib
	ros-indigo/tf
	ros-indigo/visualization_msgs
	test? ( ros-indigo/dwb_critics )
	test? ( ros-indigo/dwb_local_planner )
	test? ( ros-indigo/dwb_plugins )
	test? ( ros-indigo/roslint )
	test? ( ros-indigo/rostest )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
