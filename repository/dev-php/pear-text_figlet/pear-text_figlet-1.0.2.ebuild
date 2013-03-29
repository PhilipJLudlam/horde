# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.2"
PHP_PEAR_PKG_NAME="Text_Figlet"

inherit php-pear-r1

DESCRIPTION="Render text using FIGlet fonts"
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Text_Figlet-1.0.2.tgz"

LICENSE="PHP"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-4.0.4"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.0_beta1"
