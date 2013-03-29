# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="4.0.3"
PHP_PEAR_PKG_NAME="turba"

inherit php-pear-r1 webapp

DESCRIPTION="A web based address book"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/turba-4.0.3.tgz"

LICENSE="ASL"
KEYWORDS="~amd64"
IUSE="horde-horde_activesync horde-horde_db horde-horde_imsp horde-horde_ldap horde-horde_service_facebook"

DEPEND="dev-lang/php[nls,hash,json]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=www-apps/horde-horde-5.0.0
	>=dev-php/horde-Horde_Auth-2.0.0
	>=dev-php/horde-Horde_Core-2.0.0
	>=dev-php/horde-Horde_Data-2.0.0
	>=dev-php/horde-Horde_Date-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Form-2.0.0
	>=dev-php/horde-Horde_Group-2.0.0
	>=dev-php/horde-Horde_History-2.0.0
	>=dev-php/horde-Horde_Icalendar-2.0.0
	>=dev-php/horde-Horde_Mail-2.0.0
	>=dev-php/horde-Horde_Mime-2.0.0
	>=dev-php/horde-Horde_Nls-2.0.0
	>=dev-php/horde-Horde_Perms-2.0.0
	>=dev-php/horde-Horde_Prefs-2.0.0
	>=dev-php/horde-Horde_Serialize-2.0.0
	>=dev-php/horde-Horde_Share-2.0.0
	>=dev-php/horde-Horde_Support-2.0.0
	>=dev-php/horde-Horde_Url-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	>=dev-php/horde-Horde_View-2.0.0
	horde-horde_activesync? ( >=dev-php/horde-Horde_ActiveSync-2.0.0 )
	horde-horde_db? ( >=dev-php/horde-Horde_Db-2.0.0 )
	horde-horde_imsp? ( >=dev-php/horde-Horde_Imsp-2.0.0 )
	horde-horde_ldap? ( >=dev-php/horde-Horde_Ldap-2.0.0 )
	horde-horde_service_facebook? ( >=dev-php/horde-Horde_Service_Facebook-2.0.0 )"

src_install() {
    webapp_src_preinst

    rm -rf ${WORKDIR}/package.xml ${WORKDIR}/turba-${PV}/bin
    if [[ -x ${WORKDIR}/turba-${PV}/README ]]; then
        dodoc ${WORKDIR}/turba-${PV}/README
    fi
    find ${WORKDIR}/turba-${PV}/docs/ -type f | xargs dodoc
    rm -rf ${WORKDIR}/turba-${PV}/README ${WORKDIR}/turba-${PV}/docs/*
    insinto ${MY_HTDOCSDIR}
    doins -r ${WORKDIR}/turba-${PV}/*

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
