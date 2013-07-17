# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="3.1.2"
PHP_PEAR_PKG_NAME="ingo"

inherit webapp
S="${WORKDIR}/${PHP_PEAR_PKG_NAME}-${PEAR_PV}"

DESCRIPTION="An email filter rules manager"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/ingo-3.1.2.tgz"

LICENSE="ASL"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
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
	>=dev-php/horde-Horde_View-2.0.0
	horde-horde_vfs? ( >=dev-php/horde-Horde_Vfs-2.0.0 )
	pear-net_sieve? ( >=dev-php/PEAR-Net_Sieve-1.3.1 )
	pear-net_socket? ( dev-php/PEAR-Net_Socket )"

src_install() {
    webapp_src_preinst

    rm -rf ${WORKDIR}/package.xml ${WORKDIR}/ingo-${PV}/bin
    if [[ -e ${WORKDIR}/ingo-${PV}/README ]]; then
        dodoc ${WORKDIR}/ingo-${PV}/README
    fi
    find ${WORKDIR}/ingo-${PV}/docs/ -type f | xargs dodoc
    rm -rf ${WORKDIR}/ingo-${PV}/README ${WORKDIR}/ingo-${PV}/docs/*
    insinto ${MY_HTDOCSDIR}
    doins -r ${WORKDIR}/ingo-${PV}/*

    l=`expr length "${WORKDIR}/ingo-${PV}"`
    for i in `find ${WORKDIR}/ingo-${PV} -type d -name "config"`
    do
        webapp_serverowned ${MY_HTDOCSDIR}${i:$l}
    done
    for i in `find ${WORKDIR}/ingo-${PV} -type f -name "conf.php"`
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
    einfo "  webapp-config -I -h <hostname> horde-ingo ${PV} -d <dir>"
    einfo
    einfo "[1;32m**************************************************[00m"
}
