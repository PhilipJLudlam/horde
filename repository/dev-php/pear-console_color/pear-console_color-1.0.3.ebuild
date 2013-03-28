# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.3"
PHP_PEAR_PKG_NAME="Console_Color"

inherit php-pear-r1

DESCRIPTION="This Class allows you to easily use ANSI console colors in your application."
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Console_Color-1.0.3.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-4.0.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.0_beta1"
