# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.2.1"
PHP_PEAR_PKG_NAME="Horde_Test"

inherit php-pear-r1

DESCRIPTION="Horde testing base classes"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Test-2.2.1.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE="horde-horde_cli horde-horde_log"

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Support-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-horde_cli? ( >=dev-php/horde-Horde_Cli-2.0.0 )
	horde-horde_log? ( >=dev-php/horde-Horde_Log-2.0.0 )"
PDEPEND=">=dev-php/phpunit-PHPUnit-3.5.0"
