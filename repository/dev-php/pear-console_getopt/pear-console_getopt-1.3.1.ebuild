# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.3.1"
PHP_PEAR_PKG_NAME="Console_Getopt"

inherit php-pear-r1

DESCRIPTION="Command-line option parser"
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Console_Getopt-1.3.1.tgz"

LICENSE="PHP"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-4.3.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.8.0"
