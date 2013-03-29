# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.2.7"
PHP_PEAR_PKG_NAME="memcache"

inherit php-pear-r1

DESCRIPTION="memcached extension"
HOMEPAGE="pecl.php.net"
SRC_URI="http://pecl.php.net/get/memcache-2.2.7.tgz"

LICENSE="PHP"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-4.3.11"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.0_beta1"
