# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.3"
PHP_PEAR_PKG_NAME="File_Fstab"

inherit php-pear-r1

DESCRIPTION="Read and write fstab files"
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/File_Fstab-2.0.3.tgz"

LICENSE="PHP v3.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-4.0.0
	dev-php/PEAR-PEAR
	"
RDEPEND="${DEPEND}"
