# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.5.0a3"
PHP_PEAR_PKG_NAME="Date"

inherit php-pear-r1

DESCRIPTION="Generic date/time handling class for PEAR"
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Date-1.5.0a3.tgz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-4.3"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.0"
