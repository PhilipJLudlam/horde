# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.3.2"
PHP_PEAR_PKG_NAME="File_Find"

inherit php-pear-r1

DESCRIPTION="A Class the facilitates the search of filesystems"
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/File_Find-1.3.2.tgz"

LICENSE="PHP"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-4.0.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.0_beta1"
