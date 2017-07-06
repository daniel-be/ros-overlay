# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'camera_calibration allows easy calibration of monocular or stereo
	 cameras u'"
HOMEPAGE="http://www.ros.org/wiki/camera_calibration"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/kinetic/camera_calibration/1.12.20-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cv_bridge
	ros-kinetic/image_geometry
	ros-kinetic/message_filters
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/std_srvs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

