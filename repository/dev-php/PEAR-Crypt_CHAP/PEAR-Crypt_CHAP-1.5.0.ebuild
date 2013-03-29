# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.5.0"
PHP_PEAR_PKG_NAME="Crypt_CHAP"

inherit php-pear-r1

DESCRIPTION="Generating CHAP packets."
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Crypt_CHAP-1.5.0.tgz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~~amd64"
IUSE=""

DEPEND=">=dev-lang/php-5.1.2"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.0_beta1"
