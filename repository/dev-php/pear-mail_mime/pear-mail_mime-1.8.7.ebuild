# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.8.7"
PHP_PEAR_PKG_NAME="Mail_Mime"

inherit php-pear-r1

DESCRIPTION="Mail_Mime provides classes to create MIME messages."
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Mail_Mime-1.8.7.tgz"

LICENSE="BSD Style"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-4.3.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.6.0"
