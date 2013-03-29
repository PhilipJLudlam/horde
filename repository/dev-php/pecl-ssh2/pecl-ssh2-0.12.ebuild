# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="0.12"
PHP_PEAR_PKG_NAME="ssh2"

inherit php-pear-r1

DESCRIPTION="Bindings for the libssh2 library"
HOMEPAGE="pecl.php.net"
SRC_URI="http://pecl.php.net/get/ssh2-0.12.tgz"

LICENSE="PHP"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-4.0.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.0"
