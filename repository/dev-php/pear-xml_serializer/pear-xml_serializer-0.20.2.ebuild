# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="0.20.2"
PHP_PEAR_PKG_NAME="XML_Serializer"

inherit php-pear-r1

DESCRIPTION="Swiss-army knife for reading and writing XML files. Creates XML files from data structures and vice versa."
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/XML_Serializer-0.20.2.tgz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-lang/php[xml]
	>=dev-lang/php-4.2.0"
RDEPEND="${DEPEND}
	dev-php/pear-pear
	>=dev-php/pear-xml_util-1.1.1
	>=dev-php/pear-xml_parser-1.2.6"
