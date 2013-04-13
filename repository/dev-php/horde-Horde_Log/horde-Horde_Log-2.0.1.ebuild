# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.1"
PHP_PEAR_PKG_NAME="Horde_Log"

inherit php-pear-r1

DESCRIPTION="Horde Logging library"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Log-2.0.1.tgz"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="~amd64"
IUSE="horde-horde_scribe horde-horde_test"

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Constraint-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	horde-horde_scribe? ( >=dev-php/horde-Horde_Scribe-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-Horde_Test-2.1.0 )"