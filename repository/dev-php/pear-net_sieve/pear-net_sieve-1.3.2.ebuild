# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.3.2"
PHP_PEAR_PKG_NAME="Net_Sieve"

inherit php-pear-r1

DESCRIPTION="Handles talking to a sieve server."
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Net_Sieve-1.3.2.tgz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE="pear-auth_sasl"

DEPEND=">=dev-lang/php-4.0.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.0
	>=dev-php/pear-net_socket-1.0
	pear-auth_sasl? ( >=dev-php/pear-auth_sasl-1.0 )"
