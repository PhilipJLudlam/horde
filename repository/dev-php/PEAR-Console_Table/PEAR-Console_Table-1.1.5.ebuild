# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.1.5"
PHP_PEAR_PKG_NAME="Console_Table"

inherit php-pear-r1

DESCRIPTION="Class that makes it easy to build console style tables"
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Console_Table-1.1.5.tgz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~~amd64"
IUSE="pear-console_color"

DEPEND=">=dev-lang/php-4.0.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.0_beta1
	pear-console_color? ( >=dev-php/pear-console_color-0.0.4 )"
