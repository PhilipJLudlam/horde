# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.2"
PHP_PEAR_PKG_NAME="Horde_Cli_Modular"

inherit php-pear-r1

DESCRIPTION="A toolset for CLI interfaces that are modular."
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Cli_Modular-2.0.2.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE="horde-horde_test"

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_argv-2.0.0
	horde-horde_test? ( >=dev-php/horde-horde_test-2.1.0 )"
