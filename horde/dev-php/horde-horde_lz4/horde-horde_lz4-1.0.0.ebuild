# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.0"
PHP_PEAR_PKG_NAME="horde_lz4"

inherit php-ext-pecl-r2
PHP_EXT_S="${WORKDIR}/${PHP_PEAR_PKG_NAME}-${PEAR_PV}"
PHP_EXT_NAME=${PHP_PEAR_PKG_NAME}
S="${WORKDIR}/${PHP_PEAR_PKG_NAME}-${PEAR_PV}"

DESCRIPTION="Horde LZ4 Compression Extension"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/horde_lz4-1.0.0.tgz"

LICENSE="PHP 3.01"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE=""

DEPEND=">=dev-lang/php-5.0.0"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0"
