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
KEYWORDS="~~amd64"
IUSE="horde-horde_text_filter_csstidy horde-horde_vfs"

DEPEND="dev-lang/php[xml,nls,hash,json]
	>=dev-lang/php-5.3.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=www-apps/horde-horde-5.0.0
	>=dev-php/horde-horde_auth-2.0.0
	>=dev-php/horde-horde_browser-2.0.0
	>=dev-php/horde-horde_compress-2.0.0
	>=dev-php/horde-horde_core-2.0.0
	>=dev-php/horde-horde_crypt-2.0.0
	>=dev-php/horde-horde_date-2.0.0
	>=dev-php/horde-horde_editor-2.0.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_form-2.0.0
	>=dev-php/horde-horde_icalendar-2.0.0
	>=dev-php/horde-horde_image-2.0.0
	>=dev-php/horde-horde_imap_client-2.0.0
	>=dev-php/horde-horde_itip-2.0.0
	>=dev-php/horde-horde_listheaders-1.0.0
	>=dev-php/horde-horde_logintasks-2.0.0
	>=dev-php/horde-horde_mail-2.0.0
	>=dev-php/horde-horde_mime-2.0.0
	>=dev-php/horde-horde_mime_viewer-2.0.0
	>=dev-php/horde-horde_nls-2.0.0
	>=dev-php/horde-horde_notification-2.0.0
	>=dev-php/horde-horde_perms-2.0.0
	>=dev-php/horde-horde_serialize-2.0.0
	>=dev-php/horde-horde_spellchecker-2.0.0
	>=dev-php/horde-horde_support-2.0.0
	>=dev-php/horde-horde_text_filter-2.0.0
	>=dev-php/horde-horde_text_flowed-2.0.0
	>=dev-php/horde-horde_token-2.0.0
	>=dev-php/horde-horde_tree-2.0.0
	>=dev-php/horde-horde_url-2.0.0
	>=dev-php/horde-horde_util-2.1.0
	>=dev-php/horde-horde_view-2.0.0
	horde-horde_text_filter_csstidy? ( >=dev-php/horde-horde_text_filter_csstidy-2.0.0 )
	horde-horde_vfs? ( >=dev-php/horde-horde_vfs-2.0.0 )"
