# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.4.0a3"
PHP_PEAR_PKG_NAME="Net_FTP"

inherit php-pear-r1

DESCRIPTION="Net_FTP provides an OO interface to the PHP FTP functions plus some additions"
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Net_FTP-1.4.0a3.tgz"

LICENSE="PHP"
SLOT="0"
KEYWORDS="~~amd64"
IUSE=""

DEPEND="dev-lang/php[ftp]
	>=dev-lang/php-4.3.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.3.0"
