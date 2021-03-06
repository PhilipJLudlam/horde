# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.2"
PHP_PEAR_PKG_NAME="Horde_Db"

inherit php-pear-lib-r1
S="${WORKDIR}/${PHP_PEAR_PKG_NAME}-${PEAR_PV}"

DESCRIPTION="Horde Database Libraries"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Db-2.0.2.tgz"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE="horde-horde_autoloader horde-horde_cache horde-horde_log horde-horde_test"

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Date-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Support-2.0.0
	horde-horde_autoloader? ( >=dev-php/horde-Horde_Autoloader-2.0.0 )
	horde-horde_cache? ( >=dev-php/horde-Horde_Cache-2.0.0 )
	horde-horde_log? ( >=dev-php/horde-Horde_Log-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-Horde_Test-2.1.0 )"
