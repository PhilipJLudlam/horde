# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="0.6.1"
PHP_PEAR_PKG_NAME="Image_Text"

inherit php-pear-r1

DESCRIPTION="Image_Text - Advanced text maipulations in images."
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Image_Text-0.6.1.tgz"

LICENSE="PHP"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-lang/php[gd]
	>=dev-lang/php-4.0.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.0_beta1"
