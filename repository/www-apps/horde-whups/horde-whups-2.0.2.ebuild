# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.2"
PHP_PEAR_PKG_NAME="whups"

inherit php-pear-r1 webapp

DESCRIPTION="Ticket-tracking application"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/whups-2.0.2.tgz"

LICENSE="BSD-2-Clause"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-lang/php[nls,json]
	>=dev-lang/php-5.2.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=www-apps/horde-horde-4.0.0
	>=dev-php/horde-Horde_Auth-1.0.0
	>=dev-php/horde-Horde_Autoloader-1.0.0
	>=dev-php/horde-Horde_Compress-1.0.0
	>=dev-php/horde-Horde_Core-1.0.0
	>=dev-php/horde-Horde_Date-1.0.0
	>=dev-php/horde-Horde_Db-1.1.0
	>=dev-php/horde-Horde_Exception-1.0.0
	>=dev-php/horde-Horde_Form-1.0.0
	>=dev-php/horde-Horde_Group-1.0.0
	>=dev-php/horde-Horde_Mail-1.0.0
	>=dev-php/horde-Horde_Mime-1.2.0
	>=dev-php/horde-Horde_Mime_Viewer-1.0.0
	>=dev-php/horde-Horde_Notification-1.0.0
	>=dev-php/horde-Horde_Perms-1.0.3
	>=dev-php/horde-Horde_Prefs-1.0.0
	>=dev-php/horde-Horde_Scheduler-1.0.1
	>=dev-php/horde-Horde_Share-1.0.0
	>=dev-php/horde-Horde_Support-1.0.0
	>=dev-php/horde-Horde_Text_Filter-1.0.0
	>=dev-php/horde-Horde_Util-1.0.0
	>=dev-php/horde-Horde_Vfs-1.0.0
	>=dev-php/horde-Horde_View-1.0.0"

src_install() {
    webapp_src_preinst

    rm -rf ${WORKDIR}/package.xml ${WORKDIR}/whups-${PV}/bin
    if [[ -x ${WORKDIR}/whups-${PV}/README ]]; then
        dodoc ${WORKDIR}/whups-${PV}/README
    fi
    find ${WORKDIR}/whups-${PV}/docs/ -type f | xargs dodoc
    rm -rf ${WORKDIR}/whups-${PV}/README ${WORKDIR}/whups-${PV}/docs/*
    insinto ${MY_HTDOCSDIR}
    doins -r ${WORKDIR}/whups-${PV}/*

    if [[ -x "${MY_HTDOCSDIR}"/config ]]; then
        webapp_serverowned "${MY_HTDOCSDIR}"/config
    fi

    webapp_postinst_txt en "${FILESDIR}"/postinstall.txt
    webapp_postupgrade_txt en "${FILESDIR}"/postupgrade.txt

    webapp_src_install
}

pkg_postinst() {
    einfo "[1;32m**************************************************[00m"
    einfo
    einfo "To see the post install instructions, do"
    einfo "  webapp-config --show-postinst ${PN} ${PVR}"
    einfo "or for the post upgrade instructions, do"
    einfo "  webapp-config --show-postupgrade ${PN} ${PVR}"
    einfo
    einfo "[1;32m**************************************************[00m"
}
