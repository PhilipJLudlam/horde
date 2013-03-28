# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.2"
PHP_PEAR_PKG_NAME="Horde_Db"

inherit php-pear-r1

DESCRIPTION="Horde Database Libraries"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Db-2.0.2.tgz"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="~amd64"
IUSE="horde-horde_autoloader horde-horde_cache horde-horde_log horde-horde_test"

DEPEND=">=dev-lang/php-5.3.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_date-2.0.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_support-2.0.0
	horde-horde_autoloader? ( >=dev-php/horde-horde_autoloader-2.0.0 )
	horde-horde_cache? ( >=dev-php/horde-horde_cache-2.0.0 )
	horde-horde_log? ( >=dev-php/horde-horde_log-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-horde_test-2.1.0 )"
