# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.0RC3"
PHP_PEAR_PKG_NAME="sesha"

inherit webapp

DESCRIPTION="A simple Inventory App for Horde"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/sesha-1.0.0RC3.tgz"

LICENSE="GPL-2.0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE=""

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=www-apps/horde-horde-5.0.0
	>=dev-php/horde-Horde_Auth-2.0.0
	>=dev-php/horde-Horde_Autoloader-2.0.0
	>=dev-php/horde-Horde_Core-2.0.0
	>=dev-php/horde-Horde_Db-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Form-2.0.0
	>=dev-php/horde-Horde_Perms-2.0.0
	>=dev-php/horde-Horde_Prefs-2.0.0
	>=dev-php/horde-Horde_Rdo-2.0.0"

src_install() {
    webapp_src_preinst

    rm -rf ${WORKDIR}/package.xml ${WORKDIR}/sesha-${PV}/bin
    if [[ -e ${WORKDIR}/sesha-${PV}/README ]]; then
        dodoc ${WORKDIR}/sesha-${PV}/README
    fi
    find ${WORKDIR}/sesha-${PV}/docs/ -type f | xargs dodoc
    rm -rf ${WORKDIR}/sesha-${PV}/README ${WORKDIR}/sesha-${PV}/docs/*
    insinto ${MY_HTDOCSDIR}
    doins -r ${WORKDIR}/sesha-${PV}/*

    l=`expr length "${WORKDIR}/sesha-${PV}"`
    for i in `find ${WORKDIR}/sesha-${PV} -type d -name "config"`
    do
        webapp_serverowned ${MY_HTDOCSDIR}${i:$l}
    done
    for i in `find ${WORKDIR}/sesha-${PV} -type f -name "conf.php"`
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
    einfo "  webapp-config -I -h <hostname> horde-sesha ${PV} -d <dir>"
    einfo
    einfo "[1;32m**************************************************[00m"
}
