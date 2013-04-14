# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.2"
PHP_PEAR_PKG_NAME="content"

inherit webapp

DESCRIPTION="Tagging application"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/content-2.0.2.tgz"

LICENSE="BSD-2-Clause"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE="horde-horde_argv horde-horde_controller horde-horde_elasticsearch"

DEPEND="dev-lang/php[nls,json]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Core-2.0.0
	>=dev-php/horde-Horde_Date-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Db-2.0.0
	>=dev-php/horde-Horde_Injector-2.0.0
	>=dev-php/horde-Horde_Rdo-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-horde_argv? ( >=dev-php/horde-Horde_Argv-2.0.0 )
	horde-horde_controller? ( >=dev-php/horde-Horde_Controller-2.0.0 )
	horde-horde_elasticsearch? ( >=dev-php/horde-Horde_ElasticSearch-1.0.0 )"

src_install() {
    webapp_src_preinst

    rm -rf ${WORKDIR}/package.xml ${WORKDIR}/content-${PV}/bin
    if [[ -e ${WORKDIR}/content-${PV}/README ]]; then
        dodoc ${WORKDIR}/content-${PV}/README
    fi
    find ${WORKDIR}/content-${PV}/docs/ -type f | xargs dodoc
    rm -rf ${WORKDIR}/content-${PV}/README ${WORKDIR}/content-${PV}/docs/*
    insinto ${MY_HTDOCSDIR}
    doins -r ${WORKDIR}/content-${PV}/*

    l=`expr length "${WORKDIR}/content-${PV}"`
    for i in `find ${WORKDIR}/content-${PV} -type d -name "config"`
    do
        webapp_serverowned ${MY_HTDOCSDIR}${i:$l}
    done
    for i in `find ${WORKDIR}/content-${PV} -type f -name "conf.php"`
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
    einfo "  webapp-config -I -h <hostname> horde-content ${PV} -d <dir>"
    einfo
    einfo "[1;32m**************************************************[00m"
}
