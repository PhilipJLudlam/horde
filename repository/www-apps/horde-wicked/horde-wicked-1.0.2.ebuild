# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.2"
PHP_PEAR_PKG_NAME="wicked"

inherit php-pear-r1 webapp

DESCRIPTION="Wiki application"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/wicked-1.0.2.tgz"

LICENSE="GPL-2.0"
KEYWORDS="~amd64"
IUSE="pear-text_figlet pear-text_wiki_creole pear-text_wiki_mediawiki pear-text_wiki_tiki"

DEPEND="dev-lang/php[nls]
	>=dev-lang/php-5.2.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=www-apps/horde-horde-4.0.0
	>=dev-php/horde-Horde_Auth-1.0.0
	>=dev-php/horde-Horde_Autoloader-1.0.0
	>=dev-php/horde-Horde_Core-1.0.0
	>=dev-php/horde-Horde_Db-1.0.0
	>=dev-php/horde-Horde_Exception-1.0.0
	>=dev-php/horde-Horde_Form-1.0.0
	>=dev-php/horde-Horde_Http-1.0.0
	>=dev-php/horde-Horde_Lock-1.0.0
	>=dev-php/horde-Horde_Mail-1.0.0
	>=dev-php/horde-Horde_Mime-1.0.0
	>=dev-php/horde-Horde_Mime_Viewer-1.0.0
	>=dev-php/horde-Horde_Notification-1.0.0
	>=dev-php/horde-Horde_Perms-1.0.0
	>=dev-php/horde-Horde_Prefs-1.0.0
	>=dev-php/horde-Horde_Rpc-1.0.0
	>=dev-php/horde-Horde_Text_Diff-1.0.0
	>=dev-php/horde-Horde_Url-1.0.0
	>=dev-php/horde-Horde_Util-1.0.0
	>=dev-php/horde-Horde_Vfs-1.0.0
	>=dev-php/PEAR-Text_Wiki-1.2.0
	pear-text_figlet? ( dev-php/PEAR-Text_Figlet )
	pear-text_wiki_creole? ( >=dev-php/PEAR-Text_Wiki_Creole-1.0.0 )
	pear-text_wiki_mediawiki? ( >=dev-php/PEAR-Text_Wiki_Mediawiki-0.2.0 )
	pear-text_wiki_tiki? ( >=dev-php/PEAR-Text_Wiki_Tiki-0.1.0 )"

src_install() {
    webapp_src_preinst

    rm -rf ${WORKDIR}/package.xml ${WORKDIR}/wicked-${PV}/bin
    if [[ -x ${WORKDIR}/wicked-${PV}/README ]]; then
        dodoc ${WORKDIR}/wicked-${PV}/README
    fi
    find ${WORKDIR}/wicked-${PV}/docs/ -type f | xargs dodoc
    rm -rf ${WORKDIR}/wicked-${PV}/README ${WORKDIR}/wicked-${PV}/docs/*
    insinto ${MY_HTDOCSDIR}
    doins -r ${WORKDIR}/wicked-${PV}/*

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
