# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.3"
PHP_PEAR_PKG_NAME="Horde_Cache"

inherit php-pear-r1

DESCRIPTION="Horde Caching API"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Cache-2.0.3.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE=" horde-Horde_Compress_Fast horde-Horde_Db horde-Horde_Log horde-Horde_Memcache pecl-APC"

DEPEND="dev-lang/php[hash]
    >=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-Horde_Compress_Fast? ( >=dev-php/horde-Horde_Compress_Fast-1.0.0 )
	horde-Horde_Db? ( >=dev-php/horde-Horde_Db-2.0.0 )
	horde-Horde_Log? ( >=dev-php/horde-Horde_Log-2.0.0 )
	horde-Horde_Memcache? ( >=dev-php/horde-Horde_Memcache-2.0.0 )
	pecl-APC? ( >=dev-php/pecl-APC-3.1.1 )
	"
RDEPEND="${DEPEND}"
