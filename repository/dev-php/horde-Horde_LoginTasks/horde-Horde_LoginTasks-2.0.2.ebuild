# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.2"
PHP_PEAR_PKG_NAME="Horde_LoginTasks"

inherit php-pear-r1

DESCRIPTION="Horde Login Tasks System"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_LoginTasks-2.0.2.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE=" horde-Horde_Date horde-Horde_Test"

DEPEND=">=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Translation-2.0.0
	horde-Horde_Date? ( >=dev-php/horde-Horde_Date-2.0.0 )
	horde-Horde_Test? ( >=dev-php/horde-Horde_Test-2.1.0 )
	"
RDEPEND="${DEPEND}"
