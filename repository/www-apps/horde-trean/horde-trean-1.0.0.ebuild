# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.0"
PHP_PEAR_PKG_NAME="trean"

inherit php-pear-r1

DESCRIPTION="Web-based bookmarks application"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/trean-1.0.0.tgz"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="~amd64"
IUSE=" horde-Horde_Browser horde-Horde_Cache horde-Horde_Queue"

DEPEND="dev-lang/php[nls,json]
    >=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.7.0
	>=www-apps/horde-horde-5.0.2
	>=www-apps/horde-content-2.0.1
	>=dev-php/horde-Horde_Autoloader-2.0.0
	>=dev-php/horde-Horde_Controller-2.0.0
	>=dev-php/horde-Horde_Core-2.0.0
	>=dev-php/horde-Horde_Date-2.0.0
	>=dev-php/horde-Horde_Db-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Form-2.0.0
	>=dev-php/horde-Horde_Notification-2.0.0
	>=dev-php/horde-Horde_Perms-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	>=dev-php/horde-Horde_Vfs-2.0.0
	>=dev-php/horde-Horde_View-2.0.0
	horde-Horde_Browser? ( >=dev-php/horde-Horde_Browser-2.0.0 )
	horde-Horde_Cache? ( >=dev-php/horde-Horde_Cache-2.0.0 )
	horde-Horde_Queue? ( >=dev-php/horde-Horde_Queue-1.0.0_alpha1 )
	"
RDEPEND="${DEPEND}"
