# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.8"
PHP_PEAR_PKG_NAME="geoip"

inherit php-pear-r1

DESCRIPTION="Map IP address to geographic places"
HOMEPAGE="pecl.php.net"
SRC_URI="http://pecl.php.net/get/geoip-1.0.8.tgz"

LICENSE="PHP"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-4.3.0
	>=dev-php/PEAR-PEAR-1.4.0_beta1
	"
RDEPEND="${DEPEND}"
