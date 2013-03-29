# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.0beta2"
PHP_PEAR_PKG_NAME="horde_lz4"

inherit php-pear-r1

DESCRIPTION="Horde LZ4 Compression Extension"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/horde_lz4-1.0.0beta2.tgz"

LICENSE="PHP 3.01"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-5.0.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0"
