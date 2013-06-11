# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="5.1.0"
PHP_PEAR_PKG_NAME="webmail"

inherit webapp
S="${WORKDIR}/${PHP_PEAR_PKG_NAME}-${PEAR_PV}"

DESCRIPTION="Horde Groupware Webmail Edition"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/webmail-5.1.0.tgz"

LICENSE="OSI certified"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE=""

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	!www-apps/horde-groupware
	>=www-apps/horde-content-2.0.2
	>=www-apps/horde-gollem-3.0.0
	>=www-apps/horde-horde-5.1.0
	>=www-apps/horde-imp-6.1.0
	>=www-apps/horde-ingo-3.1.0
	>=www-apps/horde-kronolith-4.1.0
	>=www-apps/horde-mnemo-4.1.0
	>=www-apps/horde-nag-4.1.0
	>=www-apps/horde-timeobjects-2.0.3
	>=www-apps/horde-trean-1.0.1
	>=www-apps/horde-turba-4.1.0"

src_install() {
        # Horde-Webmail and Horde-Groupware are nothing more than small downloads 
        # that include a couple of configuration files, hooks and a library.
        # Webapp-config will not allow multiple web applications to be installed
        # into the same directory, so we package up the latest versions of the
        # Horde build-time dependancies into this install.

    for i in horde-content horde-gollem horde-horde horde-imp horde-ingo horde-kronolith horde-mnemo horde-nag horde-timeobjects horde-trean horde-turba
    do
        if [ "${i}" == "horde-horde" ]; then
            _end=""
        else
            _end="/${i:6}"
            mkdir -p ${WORKDIR}/webmail-${PV}${_end}
        fi
        j=`ls ${ROOT}usr/share/webapps/${i} -t1 | head -n1`
        rsync -r ${ROOT}usr/share/webapps/${i}/${j}/htdocs/ ${WORKDIR}/webmail-${PV}${_end}
    done

        # Copy the files from the Horde_Core package into the webapp root
    rsync -r ${ROOT}usr/lib*/php*/lib/pear/www/horde/ ${WORKDIR}/webmail-${PV}/

        # Copy the configuration file
    cp ${WORKDIR}/webmail-${PV}/config/conf.php.dist ${WORKDIR}/webmail-${PV}/config/conf.php

        # horde-webmail and horde-groupware and specific work done.
    webapp_src_preinst

    rm -rf ${WORKDIR}/package.xml ${WORKDIR}/webmail-${PV}/bin
    if [[ -e ${WORKDIR}/webmail-${PV}/README ]]; then
        dodoc ${WORKDIR}/webmail-${PV}/README
    fi
    find ${WORKDIR}/webmail-${PV}/docs/ -type f | xargs dodoc
    rm -rf ${WORKDIR}/webmail-${PV}/README ${WORKDIR}/webmail-${PV}/docs/*
    insinto ${MY_HTDOCSDIR}
    doins -r ${WORKDIR}/webmail-${PV}/*

    l=`expr length "${WORKDIR}/webmail-${PV}"`
    for i in `find ${WORKDIR}/webmail-${PV} -type d -name "config"`
    do
        webapp_serverowned ${MY_HTDOCSDIR}${i:$l}
    done
    for i in `find ${WORKDIR}/webmail-${PV} -type f -name "conf.php"`
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
    einfo "  webapp-config -I -h <hostname> horde-webmail ${PV} -d <dir>"
    einfo
    einfo "[1;32m**************************************************[00m"
}
