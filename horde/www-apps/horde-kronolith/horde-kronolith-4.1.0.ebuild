# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="4.1.0"
PHP_PEAR_PKG_NAME="kronolith"

inherit webapp
S="${WORKDIR}/${PHP_PEAR_PKG_NAME}-${PEAR_PV}"

DESCRIPTION="A web based calendar"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/kronolith-4.1.0.tgz"

LICENSE="GPL-2.0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE="horde-nag horde-timeobjects horde-horde_activesync horde-horde_db horde-horde_test pear-date_holidays"

DEPEND="dev-lang/php[nls,json,simplexml]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=www-apps/horde-content-2.0.0
	>=www-apps/horde-horde-5.0.0
	>=dev-php/horde-Horde_Auth-2.0.0
	>=dev-php/horde-Horde_Autoloader-2.0.0
	>=dev-php/horde-Horde_Core-2.5.0
	>=dev-php/horde-Horde_Data-2.0.0
	>=dev-php/horde-Horde_Date-2.0.0
	>=dev-php/horde-Horde_Date_Parser-2.0.0
	>=dev-php/horde-Horde_Dav-1.0.0_alpha1
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Form-2.0.0
	>=dev-php/horde-Horde_Group-2.0.0
	>=dev-php/horde-Horde_Http-2.0.0
	>=dev-php/horde-Horde_History-2.0.0
	>=dev-php/horde-Horde_Icalendar-2.0.0
	>=dev-php/horde-Horde_Image-2.0.0
	>=dev-php/horde-Horde_Lock-2.0.0
	>=dev-php/horde-Horde_LoginTasks-2.0.0
	>=dev-php/horde-Horde_Mail-2.0.0
	>=dev-php/horde-Horde_Mime-2.0.0
	>=dev-php/horde-Horde_Nls-2.0.0
	>=dev-php/horde-Horde_Notification-2.0.0
	>=dev-php/horde-Horde_Perms-2.0.0
	>=dev-php/horde-Horde_Serialize-2.0.0
	>=dev-php/horde-Horde_Share-2.0.0
	>=dev-php/horde-Horde_Support-2.0.0
	>=dev-php/horde-Horde_Text_Filter-2.0.0
	>=dev-php/horde-Horde_Timezone-1.0.0
	>=dev-php/horde-Horde_Url-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	>=dev-php/horde-Horde_View-2.0.0
	dev-php/PEAR-Date
	horde-nag? ( >=www-apps/horde-nag-4.0.0 )
	horde-timeobjects? ( >=www-apps/horde-timeobjects-2.0.0 )
	horde-horde_activesync? ( >=dev-php/horde-Horde_ActiveSync-2.4.0 )
	horde-horde_db? ( >=dev-php/horde-Horde_Db-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-Horde_Test-2.0.0 )
	pear-date_holidays? ( >=dev-php/PEAR-Date_Holidays-0.21.0 )"

src_install() {
    webapp_src_preinst

    rm -rf ${WORKDIR}/package.xml ${WORKDIR}/kronolith-${PV}/bin
    if [[ -e ${WORKDIR}/kronolith-${PV}/README ]]; then
        dodoc ${WORKDIR}/kronolith-${PV}/README
    fi
    find ${WORKDIR}/kronolith-${PV}/docs/ -type f | xargs dodoc
    rm -rf ${WORKDIR}/kronolith-${PV}/README ${WORKDIR}/kronolith-${PV}/docs/*
    insinto ${MY_HTDOCSDIR}
    doins -r ${WORKDIR}/kronolith-${PV}/*

    l=`expr length "${WORKDIR}/kronolith-${PV}"`
    for i in `find ${WORKDIR}/kronolith-${PV} -type d -name "config"`
    do
        webapp_serverowned ${MY_HTDOCSDIR}${i:$l}
    done
    for i in `find ${WORKDIR}/kronolith-${PV} -type f -name "conf.php"`
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
    einfo "  webapp-config -I -h <hostname> horde-kronolith ${PV} -d <dir>"
    einfo
    einfo "[1;32m**************************************************[00m"
}
