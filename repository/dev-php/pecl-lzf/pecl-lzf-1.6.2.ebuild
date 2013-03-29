# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.6.2"
PHP_PEAR_PKG_NAME="LZF"

inherit php-pear-r1

DESCRIPTION="LZF compression."
HOMEPAGE="pecl.php.net"
SRC_URI="http://pecl.php.net/get/LZF-1.6.2.tgz"

LICENSE="PHP"
SLOT="0"
KEYWORDS="~~amd64"
IUSE=""

DEPEND=">=dev-lang/php-4.0.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.0_beta1"
