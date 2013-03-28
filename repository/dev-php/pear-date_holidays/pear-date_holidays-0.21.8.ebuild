# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="0.21.8"
PHP_PEAR_PKG_NAME="Date_Holidays"

inherit php-pear-r1

DESCRIPTION="Driver based class to calculate holidays."
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Date_Holidays-0.21.8.tgz"

LICENSE="PHP"
SLOT="0"
KEYWORDS="~amd64"
IUSE="pear-console_getargs"

DEPEND=">=dev-lang/php-5.0.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.3.1
	dev-php/pear-date
	dev-php/pear-xml_serializer
	pear-console_getargs? ( dev-php/pear-console_getargs )"
