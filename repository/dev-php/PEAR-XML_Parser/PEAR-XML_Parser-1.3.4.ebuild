# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.3.4"
PHP_PEAR_PKG_NAME="XML_Parser"

inherit php-pear-r1

DESCRIPTION="XML parsing class based on PHP's bundled expat"
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/XML_Parser-1.3.4.tgz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~~amd64"
IUSE=""

DEPEND=">=dev-lang/php-4.2.0"
RDEPEND="${DEPEND}
	dev-php/pear-pear"
