# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="5.0.4"
PHP_PEAR_PKG_NAME="webmail"

inherit php-pear-r1 webapp

DESCRIPTION="Horde Groupware Webmail Edition"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/webmail-5.0.4.tgz"

LICENSE="OSI certified"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	!www-apps/horde-groupware
	>=www-apps/horde-content-2.0.2
	>=www-apps/horde-horde-5.0.4
	>=www-apps/horde-imp-6.0.4
	>=www-apps/horde-ingo-3.0.3
	>=www-apps/horde-kronolith-4.0.4
	>=www-apps/horde-mnemo-4.0.3
	>=www-apps/horde-nag-4.0.2
	>=www-apps/horde-timeobjects-2.0.3
	>=www-apps/horde-turba-4.0.3"

src_install() {
        // Horde-Webmail and Horde-Groupware are nothing more than small downloads 
        // that include a couple of configuration filesi, hooks and a library.
        // Webapp-config will not allow multiple web applications to be installed
        // into the same directory, so we package up the latest versions of the
        // run-time dependancies into this install.

        for i in horde-content horde-horde horde-imp horde-ingo horde-kronolith horde-mnemo horde-nag horde-timeobjects horde-turba
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

        // horde-webmail and horde-groupware and specific work done.
    webapp_src_preinst

    rm -rf ${WORKDIR}/package.xml ${WORKDIR}/webmail-${PV}/bin
    if [[ -x ${WORKDIR}/webmail-${PV}/README ]]; then
        dodoc ${WORKDIR}/webmail-${PV}/README
    fi
    find ${WORKDIR}/webmail-${PV}/docs/ -type f | xargs dodoc
    rm -rf ${WORKDIR}/webmail-${PV}/README ${WORKDIR}/webmail-${PV}/docs/*
    insinto ${MY_HTDOCSDIR}
    doins -r ${WORKDIR}/webmail-${PV}/*

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
