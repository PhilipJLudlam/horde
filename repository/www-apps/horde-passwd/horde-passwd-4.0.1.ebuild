# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="4.0.1"
PHP_PEAR_PKG_NAME="passwd"

inherit webapp


DESCRIPTION="Horde password changing application"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/passwd-4.0.1.tgz"

LICENSE="GPL-2.0"
KEYWORDS="~amd64"
IUSE="horde-horde_db horde-horde_ldap horde-horde_vfs pear-crypt_chap"

DEPEND="dev-lang/php[nls]
	>=dev-lang/php-5.2.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=www-apps/horde-horde-4.0.0
	>=dev-php/horde-Horde_Auth-1.4.0
	>=dev-php/horde-Horde_Core-1.3.0
	>=dev-php/horde-Horde_Exception-1.0.0
	>=dev-php/horde-Horde_Injector-1.0.0
	>=dev-php/horde-Horde_Util-1.0.0
	>=dev-php/horde-Horde_View-1.0.0
	horde-horde_db? ( >=dev-php/horde-Horde_Db-1.0.0 )
	horde-horde_ldap? ( >=dev-php/horde-Horde_Ldap-1.0.0 )
	horde-horde_vfs? ( >=dev-php/horde-Horde_Vfs-1.0.0 )
	pear-crypt_chap? ( dev-php/PEAR-Crypt_CHAP )"

src_install() {
    webapp_src_preinst

    rm -rf ${WORKDIR}/package.xml ${WORKDIR}/passwd-${PV}/bin
    if [[ -e ${WORKDIR}/passwd-${PV}/README ]]; then
        dodoc ${WORKDIR}/passwd-${PV}/README
    fi
    find ${WORKDIR}/passwd-${PV}/docs/ -type f | xargs dodoc
    rm -rf ${WORKDIR}/passwd-${PV}/README ${WORKDIR}/passwd-${PV}/docs/*
    insinto ${MY_HTDOCSDIR}
    doins -r ${WORKDIR}/passwd-${PV}/*

    l=`expr length "${WORKDIR}/passwd-${PV}"`
    for i in `find ${WORKDIR}/passwd-${PV} -type d -name "config"`
    do
        webapp_serverowned ${MY_HTDOCSDIR}${i:$l}
    done
    for i in `find ${WORKDIR}/passwd-${PV} -type f -name "conf.php"`
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
    einfo "  webapp-config -I -h <hostname> horde-passwd ${PV} -d <dir>"
    einfo
    einfo "[1;32m**************************************************[00m"
}
