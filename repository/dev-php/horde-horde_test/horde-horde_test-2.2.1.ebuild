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

DEPEND=">=dev-lang/php-5.3.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_support-2.0.0
	>=dev-php/horde-horde_util-2.0.0
	horde-horde_cli? ( >=dev-php/horde-horde_cli-2.0.0 )
	horde-horde_log? ( >=dev-php/horde-horde_log-2.0.0 )"
PDEPEND=">=dev-php/phpunit-PHPUnit-3.5.0"
