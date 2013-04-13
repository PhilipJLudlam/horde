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
IUSE="horde-horde_compress_fast horde-horde_db horde-horde_log horde-horde_memcache pecl-apc"

DEPEND="dev-lang/php[hash]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-horde_compress_fast? ( >=dev-php/horde-Horde_Compress_Fast-1.0.0 )
	horde-horde_db? ( >=dev-php/horde-Horde_Db-2.0.0 )
	horde-horde_log? ( >=dev-php/horde-Horde_Log-2.0.0 )
	horde-horde_memcache? ( >=dev-php/horde-Horde_Memcache-2.0.0 )
	pecl-apc? ( >=dev-php/pecl-apc-3.1.1 )"