# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.3"
PHP_PEAR_PKG_NAME="timeobjects"

inherit webapp


DESCRIPTION="Horde timeobjects application"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/timeobjects-2.0.3.tgz"

LICENSE="BSD-2-Clause"
KEYWORDS="~amd64"
IUSE="horde-horde_service_facebook horde-horde_service_weather"

DEPEND="dev-lang/php[nls]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Core-2.0.0
	>=dev-php/horde-Horde_Date-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Url-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-horde_service_facebook? ( >=dev-php/horde-Horde_Service_Facebook-2.0.0 )
	horde-horde_service_weather? ( >=dev-php/horde-Horde_Service_Weather-2.0.0 )"

src_install() {
    webapp_src_preinst

    rm -rf ${WORKDIR}/package.xml ${WORKDIR}/timeobjects-${PV}/bin
    if [[ -e ${WORKDIR}/timeobjects-${PV}/README ]]; then
        dodoc ${WORKDIR}/timeobjects-${PV}/README
    fi
    find ${WORKDIR}/timeobjects-${PV}/docs/ -type f | xargs dodoc
    rm -rf ${WORKDIR}/timeobjects-${PV}/README ${WORKDIR}/timeobjects-${PV}/docs/*
    insinto ${MY_HTDOCSDIR}
    doins -r ${WORKDIR}/timeobjects-${PV}/*

    l=`expr length "${WORKDIR}/timeobjects-${PV}"`
    for i in `find ${WORKDIR}/timeobjects-${PV} -type d -name "config"`
    do
        webapp_serverowned ${MY_HTDOCSDIR}${i:$l}
    done
    for i in `find ${WORKDIR}/timeobjects-${PV} -type f -name "conf.php"`
    do
        webapp_serverowned ${MY_HTDOCSDIR}${i:$l}
    done

    webapp_postinst_txt en "${FILESDIR}"/postinstall.txt
    webapp_postupgrade_txt en "${FILESDIR}"/postupgrade.txt

    webapp_src_install
}

pkg_postinst() {
    einfo "[1;32m**************************************************[00m"
    einfo
    einfo "For 'vhost' users, install using:"
    einfo "  webapp-config -I -h <hostname> horde-timeobjects ${PV} -d <dir>"
    einfo
    einfo "[1;32m**************************************************[00m"
}
