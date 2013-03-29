# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.6.1"
PHP_PEAR_PKG_NAME="Net_SMTP"

inherit php-pear-r1

DESCRIPTION="An implementation of the SMTP protocol"
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Net_SMTP-1.6.1.tgz"

LICENSE="PHP"
SLOT="0"
KEYWORDS="~~amd64"
IUSE="pear-auth_sasl"

DEPEND=">=dev-lang/php-4.0.5"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.3
	>=dev-php/pear-net_socket-1.0.7
	pear-auth_sasl? ( dev-php/pear-auth_sasl )"
