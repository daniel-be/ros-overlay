# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The teb_local_planner_tutorials package'"
HOMEPAGE="http://wiki.ros.org/teb_local_planner_tutorials"
SRC_URI="https://github.com/rst-tu-dortmund/teb_local_planner_tutorials-release/archive/release/kinetic/teb_local_planner_tutorials/0.2.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/amcl
	ros-kinetic/map_server
	ros-kinetic/move_base
	ros-kinetic/stage_ros
	ros-kinetic/teb_local_planner
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

