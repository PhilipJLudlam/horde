# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.2"
PHP_PEAR_PKG_NAME="Net_DIME"

inherit php-pear-r1

DESCRIPTION="The Net_DIME package implements DIME encoding and decoding"
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Net_DIME-1.0.2.tgz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-4.0.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.0_beta1"
