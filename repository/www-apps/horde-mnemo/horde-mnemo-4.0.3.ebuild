# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="4.0.3"
PHP_PEAR_PKG_NAME="mnemo"

inherit webapp


DESCRIPTION="A web based notes manager"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/mnemo-4.0.3.tgz"

LICENSE="ASL"
KEYWORDS="~amd64"
IUSE="horde-horde_cli horde-horde_crypt horde-horde_db horde-horde_pdf horde-horde_test"

DEPEND="dev-lang/php[nls]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=www-apps/horde-horde-5.0.0
	>=dev-php/horde-Horde_Auth-2.0.0
	>=dev-php/horde-Horde_Core-2.0.0
	>=dev-php/horde-Horde_Data-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Form-2.0.0
	>=dev-php/horde-Horde_Group-2.0.0
	>=dev-php/horde-Horde_History-2.0.0
	>=dev-php/horde-Horde_Icalendar-2.0.0
	>=dev-php/horde-Horde_Injector-2.0.0
	>=dev-php/horde-Horde_Perms-2.0.0
	>=dev-php/horde-Horde_Prefs-2.0.0
	>=dev-php/horde-Horde_Share-2.0.0
	>=dev-php/horde-Horde_Support-2.0.0
	>=dev-php/horde-Horde_Text_Filter-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-horde_cli? ( >=dev-php/horde-Horde_Cli-2.0.0 )
	horde-horde_crypt? ( >=dev-php/horde-Horde_Crypt-2.0.0 )
	horde-horde_db? ( >=dev-php/horde-Horde_Db-2.0.0 )
	horde-horde_pdf? ( >=dev-php/horde-Horde_Pdf-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-Horde_Test-2.0.0 )"

src_install() {
    webapp_src_preinst

    rm -rf ${WORKDIR}/package.xml ${WORKDIR}/mnemo-${PV}/bin
    if [[ -e ${WORKDIR}/mnemo-${PV}/README ]]; then
        dodoc ${WORKDIR}/mnemo-${PV}/README
    fi
    find ${WORKDIR}/mnemo-${PV}/docs/ -type f | xargs dodoc
    rm -rf ${WORKDIR}/mnemo-${PV}/README ${WORKDIR}/mnemo-${PV}/docs/*
    insinto ${MY_HTDOCSDIR}
    doins -r ${WORKDIR}/mnemo-${PV}/*

    l=`expr length "${WORKDIR}/mnemo-${PV}"`
    for i in `find ${WORKDIR}/mnemo-${PV} -type d -name "config"`
    do
        webapp_serverowned ${MY_HTDOCSDIR}${i:$l}
    done
    for i in `find ${WORKDIR}/mnemo-${PV} -type f -name "conf.php"`
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
    einfo "  webapp-config -I -h <hostname> horde-mnemo ${PV} -d <dir>"
    einfo
    einfo "[1;32m**************************************************[00m"
}
