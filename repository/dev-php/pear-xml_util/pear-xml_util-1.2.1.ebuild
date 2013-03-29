# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.2.1"
PHP_PEAR_PKG_NAME="XML_Util"

inherit php-pear-r1

DESCRIPTION="XML utility class"
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/XML_Util-1.2.1.tgz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-4.3.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.3"
