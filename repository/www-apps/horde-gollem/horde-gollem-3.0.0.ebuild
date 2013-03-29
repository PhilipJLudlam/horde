# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="3.0.0"
PHP_PEAR_PKG_NAME="gollem"

inherit php-pear-r1

DESCRIPTION="Web-based file manager"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/gollem-3.0.0.tgz"

LICENSE="GPL-2.0"
SLOT="0"
KEYWORDS="~~amd64"
IUSE="horde-horde_db horde-horde_share"

DEPEND="dev-lang/php[nls,json]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=www-apps/horde-horde-5.0.2
	>=dev-php/horde-horde_auth-2.0.0
	>=dev-php/horde-horde_cache-2.0.0
	>=dev-php/horde-horde_core-2.1.5
	>=dev-php/horde-horde_editor-2.0.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_mime-2.0.0
	>=dev-php/horde-horde_mime_viewer-2.0.0
	>=dev-php/horde-horde_perms-2.0.0
	>=dev-php/horde-horde_secret-2.0.0
	>=dev-php/horde-horde_serialize-2.0.0
	>=dev-php/horde-horde_support-2.0.0
	>=dev-php/horde-horde_url-2.0.0
	>=dev-php/horde-horde_util-2.0.0
	>=dev-php/horde-horde_vfs-2.0.0
	>=dev-php/horde-horde_view-2.0.0
	horde-horde_db? ( >=dev-php/horde-horde_db-2.0.0 )
	horde-horde_share? ( >=dev-php/horde-horde_share-2.0.0 )"
