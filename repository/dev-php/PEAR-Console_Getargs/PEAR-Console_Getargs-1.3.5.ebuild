# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.3.5"
PHP_PEAR_PKG_NAME="Console_Getargs"

inherit php-pear-r1

DESCRIPTION="A command-line arguments parser"
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Console_Getargs-1.3.5.tgz"

LICENSE="PHP"
SLOT="0"
KEYWORDS="~~amd64"
IUSE=""

DEPEND=">=dev-lang/php-4.1.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.0_beta1"
