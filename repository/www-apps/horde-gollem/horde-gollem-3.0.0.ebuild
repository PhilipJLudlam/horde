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
KEYWORDS="~amd64"
IUSE=" horde-Horde_Db horde-Horde_Share"

DEPEND="dev-lang/php[nls,json]
    >=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.7.0
	>=www-apps/horde-horde-5.0.2
	>=dev-php/horde-Horde_Auth-2.0.0
	>=dev-php/horde-Horde_Cache-2.0.0
	>=dev-php/horde-Horde_Core-2.1.5
	>=dev-php/horde-Horde_Editor-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Mime-2.0.0
	>=dev-php/horde-Horde_Mime_Viewer-2.0.0
	>=dev-php/horde-Horde_Perms-2.0.0
	>=dev-php/horde-Horde_Secret-2.0.0
	>=dev-php/horde-Horde_Serialize-2.0.0
	>=dev-php/horde-Horde_Support-2.0.0
	>=dev-php/horde-Horde_Url-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	>=dev-php/horde-Horde_Vfs-2.0.0
	>=dev-php/horde-Horde_View-2.0.0
	horde-Horde_Db? ( >=dev-php/horde-Horde_Db-2.0.0 )
	horde-Horde_Share? ( >=dev-php/horde-Horde_Share-2.0.0 )
	"
RDEPEND="${DEPEND}"
