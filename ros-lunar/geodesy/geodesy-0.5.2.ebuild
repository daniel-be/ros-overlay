# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Python and C++ interfaces for manipulating geodetic coordinates."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-geographic-info/geographic_info-release/archive/release/lunar/geodesy/0.5.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/geographic_msgs
    ros-lunar/geometry_msgs
    ros-lunar/sensor_msgs
    ros-lunar/tf
    ros-lunar/unique_id
    ros-lunar/uuid_msgs
    dev-python/pyproj
"
DEPEND="${RDEPEND}
    ros-lunar/angles
    ros-lunar/catkin
    dev-python/catkin_pkg
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/lunar"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    mkdir ${WORKDIR}/${P}/build
    mkdir ${WORKDIR}/${P}/devel
    cd ${WORKDIR}/${P}/build
    cmake -DCMAKE_INSTALL_PREFIX=${D}/${ROS_PREFIX} -DCMAKE_PREFIX_PATH=/${ROS_PREFIX} -DCATKIN_DEVEL_PREFIX=../devel ..
    make -j$(nproc) -l$(nproc) || die
}

src_install() {
    cd ${WORKDIR}/${P}/build
    make install || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
