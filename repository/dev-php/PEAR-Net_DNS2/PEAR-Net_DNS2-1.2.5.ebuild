# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.2.5"
PHP_PEAR_PKG_NAME="Net_DNS2"

inherit php-pear-r1

DESCRIPTION="PHP5 Resolver library used to communicate with a DNS server."
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Net_DNS2-1.2.5.tgz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~~amd64"
IUSE=""

DEPEND=">=dev-lang/php-5.1.2"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.0_alpha12"
