# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.3"
PHP_PEAR_PKG_NAME="Horde_Autoloader_Cache"

inherit php-pear-r1

DESCRIPTION="Cache for the Horde_Autoloader library"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Autoloader_Cache-2.0.3.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~~amd64"
IUSE="horde-horde_lz4 pecl-lzf"

DEPEND="dev-lang/php[json]
	>=dev-lang/php-5.3.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_autoloader-2.0.0
	horde-horde_lz4? ( dev-php/horde-horde_lz4 )
	pecl-lzf? ( >=dev-php/pecl-lzf-1.5.2 )"
