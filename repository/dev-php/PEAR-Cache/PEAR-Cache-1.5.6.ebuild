# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.5.6"
PHP_PEAR_PKG_NAME="Cache"

inherit php-pear-r1

DESCRIPTION="Framework for caching of arbitrary data."
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Cache-1.5.6.tgz"

LICENSE="PHP"
SLOT="0"
KEYWORDS="~~amd64"
IUSE="pear-http_request"

DEPEND=">=dev-lang/php-4.3.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	pear-http_request? ( dev-php/pear-http_request )"
