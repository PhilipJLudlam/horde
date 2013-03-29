# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.4.4"
PHP_PEAR_PKG_NAME="HTTP_Request"

inherit php-pear-r1

DESCRIPTION="Provides an easy way to perform HTTP requests"
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/HTTP_Request-1.4.4.tgz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~~amd64"
IUSE=""

DEPEND=">=dev-lang/php-4.2.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.3
	>=dev-php/pear-net_url-1.0.12
	>=dev-php/pear-net_socket-1.0.7"
