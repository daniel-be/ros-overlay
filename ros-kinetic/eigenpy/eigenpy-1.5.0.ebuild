# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Bindings between Numpy and Eigen using Boost.Python - wrapped for catkin."
HOMEPAGE="https://github.com/stack-of-tasks/eigenpy"
SRC_URI="https://github.com/ipab-slmc/${PN}_catkin-release/archive/release/kinetic/${PN}/1.5.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-libs/boost[python]
	dev-cpp/eigen
	dev-lang/python
	dev-python/numpy
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
