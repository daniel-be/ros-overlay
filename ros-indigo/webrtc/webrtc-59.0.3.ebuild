# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="WebRTC Native API"
HOMEPAGE="http://wiki.ros.org/webrtc"
SRC_URI="https://github.com/RobotWebTools-release/${PN}_ros-release/archive/release/indigo/${PN}/59.0.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	x11-libs/gtk+:2
	x11-libs/gtk+:3
	media-libs/alsa-lib
	dev-libs/glib
	media-sound/pulseaudio
"
DEPEND="${RDEPEND}
	dev-util/cmake
	dev-vcs/git
	net-misc/wget
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
