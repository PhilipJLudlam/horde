# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.1"
PHP_PEAR_PKG_NAME="Horde_Notification"

inherit php-pear-r1

DESCRIPTION="Horde Notification System"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Notification-2.0.1.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE=" horde-Horde_Alarm horde-Horde_Nls horde-Horde_Test"

DEPEND="dev-lang/php[nls]
    >=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-Horde_Alarm? ( >=dev-php/horde-Horde_Alarm-2.0.0 )
	horde-Horde_Nls? ( >=dev-php/horde-Horde_Nls-2.0.0 )
	horde-Horde_Test? ( >=dev-php/horde-Horde_Test-2.1.0 )
	"
RDEPEND="${DEPEND}"
