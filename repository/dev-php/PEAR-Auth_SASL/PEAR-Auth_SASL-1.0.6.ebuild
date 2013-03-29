# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.6"
PHP_PEAR_PKG_NAME="Auth_SASL"

inherit php-pear-r1

DESCRIPTION="Abstraction of various SASL mechanism responses"
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Auth_SASL-1.0.6.tgz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~~amd64"
IUSE=""

DEPEND=">=dev-lang/php-4.2.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.3"
