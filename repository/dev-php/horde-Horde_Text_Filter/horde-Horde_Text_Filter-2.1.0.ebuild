# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.1.0"
PHP_PEAR_PKG_NAME="Horde_Text_Filter"

inherit php-pear-r1

DESCRIPTION="Horde Text Filter API"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Text_Filter-2.1.0.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE="horde-horde_text_flowed horde-horde_test horde-horde_translation"

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-horde_text_flowed? ( >=dev-php/horde-Horde_Text_Flowed-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-Horde_Test-2.1.0 )
	horde-horde_translation? ( >=dev-php/horde-Horde_Translation-2.0.0 )"
