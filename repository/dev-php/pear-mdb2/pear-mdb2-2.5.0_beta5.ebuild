# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.5.0b5"
PHP_PEAR_PKG_NAME="MDB2"

inherit php-pear-r1

DESCRIPTION="database abstraction layer"
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/MDB2-2.5.0b5.tgz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-5.2.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.3.6"
