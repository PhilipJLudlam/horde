# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.1.0"
PHP_PEAR_PKG_NAME="XML_SVG"

inherit php-pear-r1

DESCRIPTION="XML_SVG API"
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/XML_SVG-1.1.0.tgz"

LICENSE="LGPL"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-4.2.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.0_beta1"
