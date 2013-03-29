# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="5.0.4"
PHP_PEAR_PKG_NAME="groupware"

inherit php-pear-r1

DESCRIPTION="Horde Groupware"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/groupware-5.0.4.tgz"

LICENSE="OSI certified"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	!www-apps/horde-webmail
	>=www-apps/horde-content-2.0.2
	>=www-apps/horde-horde-5.0.4
	>=www-apps/horde-kronolith-4.0.4
	>=www-apps/horde-mnemo-4.0.3
	>=www-apps/horde-nag-4.0.2
	>=www-apps/horde-timeobjects-2.0.3
	>=www-apps/horde-turba-4.0.3"

src_install() {
    webapp_src_preinst

    rm -rf ${WORKDIR}/package.xml ${WORKDIR}/groupware-${PV}/bin
    dodoc ${WORKDIR}/groupware-${PV}/README ${WORKDIR}/groupware-${PV}/docs
    rm -rf ${WORKDIR}/groupware-${PV}/README ${WORKDIR}/groupware-${PV}/docs
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
