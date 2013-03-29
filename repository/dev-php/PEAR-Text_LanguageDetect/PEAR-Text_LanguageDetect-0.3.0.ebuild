# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="0.3.0"
PHP_PEAR_PKG_NAME="Text_LanguageDetect"

inherit php-pear-r1

DESCRIPTION="Language detection class"
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Text_LanguageDetect-0.3.0.tgz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~~amd64"
IUSE=""

DEPEND=">=dev-lang/php-5.3"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.9.0"
