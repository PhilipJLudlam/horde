# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.1"
PHP_PEAR_PKG_NAME="Horde_Compress_Fast"

inherit php-pear-r1

DESCRIPTION="Fast Compression Library"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Compress_Fast-1.0.1.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~~amd64"
IUSE="horde-horde_test horde-horde_lz4 pecl-lzf"

DEPEND=">=dev-lang/php-5.3.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_exception-2.0.0
	horde-horde_test? ( >=dev-php/horde-horde_test-2.1.0 )
	horde-horde_lz4? ( dev-php/horde-horde_lz4 )
	pecl-lzf? ( >=dev-php/pecl-lzf-1.5.2 )"
