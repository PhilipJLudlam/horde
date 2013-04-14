# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.2"
PHP_PEAR_PKG_NAME="ansel"

inherit webapp

DESCRIPTION="Photo management application"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/ansel-2.0.2.tgz"

LICENSE="GPL-2.0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE="horde-horde_service_urlshortener horde-horde_service_twitter horde-horde_service_facebook"

DEPEND="dev-lang/php[nls,hash]
	>=dev-lang/php-5.2.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=www-apps/horde-content-1.0.0
	>=www-apps/horde-horde-4.0.10
	>=dev-php/horde-Horde_Auth-1.0.4
	>=dev-php/horde-Horde_Autoloader-1.0.0
	>=dev-php/horde-Horde_Core-1.5.1
	>=dev-php/horde-Horde_Date-1.0.0
	>=dev-php/horde-Horde_Db-1.0.0
	>=dev-php/horde-Horde_Exception-1.0.0
	>=dev-php/horde-Horde_Form-1.0.0
	>=dev-php/horde-Horde_Group-1.0.0
	>=dev-php/horde-Horde_Image-1.0.4
	>=dev-php/horde-Horde_Mime-1.0.0
	>=dev-php/horde-Horde_Nls-1.0.0
	>=dev-php/horde-Horde_Perms-1.0.0
	>=dev-php/horde-Horde_Prefs-1.0.0
	>=dev-php/horde-Horde_Serialize-1.0.0
	>=dev-php/horde-Horde_Share-1.0.0
	>=dev-php/horde-Horde_Support-1.0.0
	>=dev-php/horde-Horde_Text_Filter-1.0.0
	>=dev-php/horde-Horde_Url-1.0.0
	>=dev-php/horde-Horde_Util-1.0.0
	>=dev-php/horde-Horde_View-1.0.0
	>=dev-php/horde-Horde_Vfs-1.0.0
	horde-horde_service_urlshortener? ( >=dev-php/horde-Horde_Service_UrlShortener-1.0.0 )
	horde-horde_service_twitter? ( >=dev-php/horde-Horde_Service_Twitter-1.0.0 )
	horde-horde_service_facebook? ( >=dev-php/horde-Horde_Service_Facebook-1.0.0 )"

src_install() {
    webapp_src_preinst

    rm -rf ${WORKDIR}/package.xml ${WORKDIR}/ansel-${PV}/bin
    if [[ -e ${WORKDIR}/ansel-${PV}/README ]]; then
        dodoc ${WORKDIR}/ansel-${PV}/README
    fi
    find ${WORKDIR}/ansel-${PV}/docs/ -type f | xargs dodoc
    rm -rf ${WORKDIR}/ansel-${PV}/README ${WORKDIR}/ansel-${PV}/docs/*
    insinto ${MY_HTDOCSDIR}
    doins -r ${WORKDIR}/ansel-${PV}/*

    l=`expr length "${WORKDIR}/ansel-${PV}"`
    for i in `find ${WORKDIR}/ansel-${PV} -type d -name "config"`
    do
        webapp_serverowned ${MY_HTDOCSDIR}${i:$l}
    done
    for i in `find ${WORKDIR}/ansel-${PV} -type f -name "conf.php"`
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
    einfo "  webapp-config -I -h <hostname> horde-ansel ${PV} -d <dir>"
    einfo
    einfo "[1;32m**************************************************[00m"
}
