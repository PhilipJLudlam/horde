# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="0.13.0"
PHP_PEAR_PKG_NAME="SOAP"

inherit php-pear-r1

DESCRIPTION="SOAP Client/Server for PHP"
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/SOAP-0.13.0.tgz"

LICENSE="PHP"
SLOT="0"
KEYWORDS="~amd64"
IUSE="pear-mail pear-mail_mime pear-net_dime"

DEPEND=">=dev-lang/php-5.0.0"
RDEPEND="${DEPEND}
	dev-php/pear-pear
	dev-php/pear-http_request
	pear-mail? ( dev-php/pear-mail )
	pear-mail_mime? ( dev-php/pear-mail_mime )
	pear-net_dime? ( dev-php/pear-net_dime )"
