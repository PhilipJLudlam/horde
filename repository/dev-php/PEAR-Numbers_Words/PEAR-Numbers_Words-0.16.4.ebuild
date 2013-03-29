# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="0.16.4"
PHP_PEAR_PKG_NAME="Numbers_Words"

inherit php-pear-r1

DESCRIPTION="The PEAR Numbers_Words package provides methods for spelling numerals in words."
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Numbers_Words-0.16.4.tgz"

LICENSE="PHP"
SLOT="0"
KEYWORDS="~~amd64"
IUSE=""

DEPEND=">=dev-lang/php-4.0.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.0_beta1
	dev-php/pear-math_biginteger"
