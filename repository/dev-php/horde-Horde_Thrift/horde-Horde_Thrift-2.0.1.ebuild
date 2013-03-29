# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.1"
PHP_PEAR_PKG_NAME="Horde_Thrift"

inherit php-pear-r1

DESCRIPTION="Thrift"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Thrift-2.0.1.tgz"

LICENSE="Apache 2.0"
SLOT="0"
KEYWORDS="~~amd64"
IUSE=""

DEPEND=">=dev-lang/php-5.3.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0"
