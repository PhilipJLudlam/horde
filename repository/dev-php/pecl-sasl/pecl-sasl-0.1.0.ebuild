# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="0.1.0"
PHP_PEAR_PKG_NAME="sasl"

inherit php-pear-r1

DESCRIPTION="Cyrus SASL Extension"
HOMEPAGE="pecl.php.net"
SRC_URI="http://pecl.php.net/get/sasl-0.1.0.tgz"

LICENSE="PHP"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-lang/php
	
	"
RDEPEND="${DEPEND}"
