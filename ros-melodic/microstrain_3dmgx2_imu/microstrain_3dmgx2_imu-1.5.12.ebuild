# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A driver for IMUs compatible the microstrain 3DM-GX2 and 3DM-GX3 protocol. [...]"
HOMEPAGE="http://www.ros.org/wiki/microstrain_3dmgx2_imu"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/1.5.12-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diagnostic_updater
	ros-melodic/message_runtime
	ros-melodic/roscpp
	ros-melodic/self_test
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/tf
	dev-libs/log4cxx
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
