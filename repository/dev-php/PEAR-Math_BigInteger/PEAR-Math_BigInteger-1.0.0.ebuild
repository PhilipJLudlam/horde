# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.0"
PHP_PEAR_PKG_NAME="Math_BigInteger"

inherit php-pear-r1

DESCRIPTION="Pure-PHP arbitrary precission integer arithmetic library"
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Math_BigInteger-1.0.0.tgz"

LICENSE="LGPL"
SLOT="0"
KEYWORDS="~~amd64"
IUSE=""

DEPEND=">=dev-lang/php-4.2"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.0"
