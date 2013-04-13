# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="5.0.4"
PHP_PEAR_PKG_NAME="groupware"

inherit webapp


DESCRIPTION="Horde Groupware"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/groupware-5.0.4.tgz"

LICENSE="OSI certified"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	!www-apps/horde-webmail
	>=www-apps/horde-content-2.0.2
	>=www-apps/horde-horde-5.0.4
	>=www-apps/horde-kronolith-4.0.4
	>=www-apps/horde-mnemo-4.0.3
	>=www-apps/horde-nag-4.0.2
	>=www-apps/horde-timeobjects-2.0.3
	>=www-apps/horde-turba-4.0.3"

src_install() {
        # Horde-Webmail and Horde-Groupware are nothing more than small downloads 
        # that include a couple of configuration files, hooks and a library.
        # Webapp-config will not allow multiple web applications to be installed
        # into the same directory, so we package up the latest versions of the
        # Horde build-time dependancies into this install.

    for i in horde-content horde-horde horde-kronolith horde-mnemo horde-nag horde-timeobjects horde-turba
    do
        if [ "${i}" == "horde-horde" ]; then
            _end=""
        else
            _end="/${i:6}"
            mkdir -p ${WORKDIR}/groupware-${PV}${_end}
        fi
        j=`ls ${ROOT}usr/share/webapps/${i} -t1 | head -n1`
        rsync -r ${ROOT}usr/share/webapps/${i}/${j}/htdocs/ ${WORKDIR}/groupware-${PV}${_end}
    done

        # Copy the files from the Horde_Core package into the webapp root
    rsync -r ${ROOT}usr/lib*/php*/lib/pear/www/horde/ ${WORKDIR}/groupware-${PV}/

        # Copy the configuration file
    cp ${WORKDIR}/groupware-${PV}/config/conf.php.dist ${WORKDIR}/groupware-${PV}/config/conf.php

        # horde-webmail and horde-groupware and specific work done.
    webapp_src_preinst

    rm -rf ${WORKDIR}/package.xml ${WORKDIR}/groupware-${PV}/bin
    if [[ -e ${WORKDIR}/groupware-${PV}/README ]]; then
        dodoc ${WORKDIR}/groupware-${PV}/README
    fi
    find ${WORKDIR}/groupware-${PV}/docs/ -type f | xargs dodoc
    rm -rf ${WORKDIR}/groupware-${PV}/README ${WORKDIR}/groupware-${PV}/docs/*
    insinto ${MY_HTDOCSDIR}
    doins -r ${WORKDIR}/groupware-${PV}/*

    l=`expr length "${WORKDIR}/groupware-${PV}"`
    for i in `find ${WORKDIR}/groupware-${PV} -type d -name "config"`
    do
        webapp_serverowned ${MY_HTDOCSDIR}${i:$l}
    done
    for i in `find ${WORKDIR}/groupware-${PV} -type f -name "conf.php"`
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
    einfo "  webapp-config -I -h <hostname> horde-groupware ${PV} -d <dir>"
    einfo
    einfo "[1;32m**************************************************[00m"
}
