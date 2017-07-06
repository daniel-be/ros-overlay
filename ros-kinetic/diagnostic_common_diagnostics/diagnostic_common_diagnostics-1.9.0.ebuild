# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="diagnostic_common_diagnostics"
HOMEPAGE="http://ros.org/wiki/diagnostic_common_diagnostics"
SRC_URI="https://github.com/ros-gbp/diagnostics-release/archive/release/kinetic/diagnostic_common_diagnostics/1.9.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_updater
	ros-kinetic/rospy
	ros-kinetic/tf
	app-admin/hddtemp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

