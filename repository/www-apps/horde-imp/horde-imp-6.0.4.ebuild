# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="6.0.4"
PHP_PEAR_PKG_NAME="imp"

inherit php-pear-r1

DESCRIPTION="A web based webmail system"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/imp-6.0.4.tgz"

LICENSE="GPL-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE="horde-horde_text_filter_csstidy horde-horde_vfs"

DEPEND="dev-lang/php[xml,nls,hash,json]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=www-apps/horde-horde-5.0.0
	>=dev-php/horde-Horde_Auth-2.0.0
	>=dev-php/horde-Horde_Browser-2.0.0
	>=dev-php/horde-Horde_Compress-2.0.0
	>=dev-php/horde-Horde_Core-2.0.0
	>=dev-php/horde-Horde_Crypt-2.0.0
	>=dev-php/horde-Horde_Date-2.0.0
	>=dev-php/horde-Horde_Editor-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Form-2.0.0
	>=dev-php/horde-Horde_Icalendar-2.0.0
	>=dev-php/horde-Horde_Image-2.0.0
	>=dev-php/horde-Horde_Imap_Client-2.0.0
	>=dev-php/horde-Horde_Itip-2.0.0
	>=dev-php/horde-Horde_ListHeaders-1.0.0
	>=dev-php/horde-Horde_LoginTasks-2.0.0
	>=dev-php/horde-Horde_Mail-2.0.0
	>=dev-php/horde-Horde_Mime-2.0.0
	>=dev-php/horde-Horde_Mime_Viewer-2.0.0
	>=dev-php/horde-Horde_Nls-2.0.0
	>=dev-php/horde-Horde_Notification-2.0.0
	>=dev-php/horde-Horde_Perms-2.0.0
	>=dev-php/horde-Horde_Serialize-2.0.0
	>=dev-php/horde-Horde_SpellChecker-2.0.0
	>=dev-php/horde-Horde_Support-2.0.0
	>=dev-php/horde-Horde_Text_Filter-2.0.0
	>=dev-php/horde-Horde_Text_Flowed-2.0.0
	>=dev-php/horde-Horde_Token-2.0.0
	>=dev-php/horde-Horde_Tree-2.0.0
	>=dev-php/horde-Horde_Url-2.0.0
	>=dev-php/horde-Horde_Util-2.1.0
	>=dev-php/horde-Horde_View-2.0.0
	horde-horde_text_filter_csstidy? ( >=dev-php/horde-Horde_Text_Filter_Csstidy-2.0.0 )
	horde-horde_vfs? ( >=dev-php/horde-Horde_Vfs-2.0.0 )"

src_install() {
    webapp_src_preinst

    rm -rf ${WORKDIR}/package.xml ${WORKDIR}/imp-${PV}/bin
    dodoc ${WORKDIR}/imp-${PV}/README ${WORKDIR}/imp-${PV}/docs
    rm -rf ${WORKDIR}/imp-${PV}/README ${WORKDIR}/imp-${PV}/docs
    insinto ${MY_HTDOCSDIR}
    doins -r ${WORKDIR}/webmail-${PV}/*

    webapp_serverowned "${MY_HTDOCSDIR}"/config

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
