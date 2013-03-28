# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="3.1.13"
PHP_PEAR_PKG_NAME="APC"

inherit php-pear-r1

DESCRIPTION="Alternative PHP Cache"
HOMEPAGE="pecl.php.net"
SRC_URI="http://pecl.php.net/get/APC-3.1.13.tgz"

LICENSE="PHP"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-5.1.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.0"
