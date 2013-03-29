# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.1.2"
PHP_PEAR_PKG_NAME="Net_IMAP"

inherit php-pear-r1

DESCRIPTION="Provides an implementation of the IMAP protocol"
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Net_IMAP-1.1.2.tgz"

LICENSE="PHP"
SLOT="0"
KEYWORDS="~~amd64"
IUSE="pear-auth_sasl"

DEPEND=">=dev-lang/php-4.2"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.0_beta1
	>=dev-php/pear-net_socket-1.0.8
	pear-auth_sasl? ( >=dev-php/pear-auth_sasl-1.0.2 )"
