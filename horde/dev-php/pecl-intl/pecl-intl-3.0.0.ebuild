# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="3.0.0"
PHP_PEAR_PKG_NAME="intl"

inherit php-ext-pecl-r2

DESCRIPTION="Internationalization extension"
HOMEPAGE="pecl.php.net"
SRC_URI="http://pecl.php.net/get/intl-3.0.0.tgz"

LICENSE="PHP"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE=""

DEPEND=">=dev-lang/php-5.2.4"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.4.8"
