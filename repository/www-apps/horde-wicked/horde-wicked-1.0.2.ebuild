# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.2"
PHP_PEAR_PKG_NAME="wicked"

inherit php-pear-r1

DESCRIPTION="Wiki application"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/wicked-1.0.2.tgz"

LICENSE="GPL-2.0"
SLOT="0"
KEYWORDS="~~amd64"
IUSE="pear-text_figlet pear-text_wiki_creole pear-text_wiki_mediawiki pear-text_wiki_tiki"

DEPEND="dev-lang/php[nls]
	>=dev-lang/php-5.2.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=www-apps/horde-horde-4.0.0
	>=dev-php/horde-horde_auth-1.0.0
	>=dev-php/horde-horde_autoloader-1.0.0
	>=dev-php/horde-horde_core-1.0.0
	>=dev-php/horde-horde_db-1.0.0
	>=dev-php/horde-horde_exception-1.0.0
	>=dev-php/horde-horde_form-1.0.0
	>=dev-php/horde-horde_http-1.0.0
	>=dev-php/horde-horde_lock-1.0.0
	>=dev-php/horde-horde_mail-1.0.0
	>=dev-php/horde-horde_mime-1.0.0
	>=dev-php/horde-horde_mime_viewer-1.0.0
	>=dev-php/horde-horde_notification-1.0.0
	>=dev-php/horde-horde_perms-1.0.0
	>=dev-php/horde-horde_prefs-1.0.0
	>=dev-php/horde-horde_rpc-1.0.0
	>=dev-php/horde-horde_text_diff-1.0.0
	>=dev-php/horde-horde_url-1.0.0
	>=dev-php/horde-horde_util-1.0.0
	>=dev-php/horde-horde_vfs-1.0.0
	>=dev-php/pear-text_wiki-1.2.0
	pear-text_figlet? ( dev-php/pear-text_figlet )
	pear-text_wiki_creole? ( >=dev-php/pear-text_wiki_creole-1.0.0 )
	pear-text_wiki_mediawiki? ( >=dev-php/pear-text_wiki_mediawiki-0.2.0 )
	pear-text_wiki_tiki? ( >=dev-php/pear-text_wiki_tiki-0.1.0 )"
