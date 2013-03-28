# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.7.14"
PHP_PEAR_PKG_NAME="DB"

inherit php-pear-r1

DESCRIPTION="Database Abstraction Layer"
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/DB-1.7.14.tgz"

LICENSE="PHP"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-4.2.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.0_beta1"
