# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="3.0.3"
PHP_PEAR_PKG_NAME="ingo"

inherit php-pear-r1 webapp

DESCRIPTION="An email filter rules manager"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/ingo-3.0.3.tgz"

LICENSE="ASL"
KEYWORDS="~amd64"
IUSE="horde-horde_vfs pear-net_sieve pear-net_socket"

DEPEND="dev-lang/php[nls]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=www-apps/horde-horde-5.0.0
	>=dev-php/horde-Horde_Auth-2.0.0
	>=dev-php/horde-Horde_Autoloader-2.0.0
	>=dev-php/horde-Horde_Core-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Group-2.0.0
	>=dev-php/horde-Horde_Form-2.0.0
	>=dev-php/horde-Horde_Imap_Client-2.0.0
	>=dev-php/horde-Horde_Mime-2.0.0
	>=dev-php/horde-Horde_Perms-2.0.0
	>=dev-php/horde-Horde_Share-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-horde_vfs? ( >=dev-php/horde-Horde_Vfs-2.0.0 )
	pear-net_sieve? ( >=dev-php/PEAR-Net_Sieve-1.3.1 )
	pear-net_socket? ( dev-php/PEAR-Net_Socket )"

src_install() {
    webapp_src_preinst

    rm -rf ${WORKDIR}/package.xml ${WORKDIR}/ingo-${PV}/bin
    if [[ -x ${WORKDIR}/ingo-${PV}/README ]]; then
        dodoc ${WORKDIR}/ingo-${PV}/README
    fi
    find ${WORKDIR}/ingo-${PV}/docs/ -type f | xargs dodoc
    rm -rf ${WORKDIR}/ingo-${PV}/README ${WORKDIR}/ingo-${PV}/docs/*
    insinto ${MY_HTDOCSDIR}
    doins -r ${WORKDIR}/ingo-${PV}/*

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
