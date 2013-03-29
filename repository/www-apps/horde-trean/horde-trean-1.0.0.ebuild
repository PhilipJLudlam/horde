# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.0"
PHP_PEAR_PKG_NAME="trean"

inherit php-pear-r1

DESCRIPTION="Web-based bookmarks application"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/trean-1.0.0.tgz"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="~amd64"
IUSE="horde-horde_browser horde-horde_cache horde-horde_queue"

DEPEND="dev-lang/php[nls,json]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=www-apps/horde-horde-5.0.2
	>=www-apps/horde-content-2.0.1
	>=dev-php/horde-Horde_Autoloader-2.0.0
	>=dev-php/horde-Horde_Controller-2.0.0
	>=dev-php/horde-Horde_Core-2.0.0
	>=dev-php/horde-Horde_Date-2.0.0
	>=dev-php/horde-Horde_Db-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Form-2.0.0
	>=dev-php/horde-Horde_Notification-2.0.0
	>=dev-php/horde-Horde_Perms-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	>=dev-php/horde-Horde_Vfs-2.0.0
	>=dev-php/horde-Horde_View-2.0.0
	horde-horde_browser? ( >=dev-php/horde-Horde_Browser-2.0.0 )
	horde-horde_cache? ( >=dev-php/horde-Horde_Cache-2.0.0 )
	horde-horde_queue? ( >=dev-php/horde-Horde_Queue-1.0.0_alpha1 )"

src_install() {
    webapp_src_preinst

    rm -rf ${WORKDIR}/package.xml ${WORKDIR}/trean-${PV}/bin
    dodoc ${WORKDIR}/trean-${PV}/README ${WORKDIR}/trean-${PV}/docs
    rm -rf ${WORKDIR}/trean-${PV}/README ${WORKDIR}/trean-${PV}/docs
    insinto ${MY_HTDOCSDIR}
    doins -r ${WORKDIR}/webmail-${PV}/*

    webapp_serverowned "${MY_HTDOCSDIR}"/config

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
