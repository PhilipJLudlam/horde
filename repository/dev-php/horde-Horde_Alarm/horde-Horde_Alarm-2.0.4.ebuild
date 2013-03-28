# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.4"
PHP_PEAR_PKG_NAME="Horde_Alarm"

inherit php-pear-r1

DESCRIPTION="Horde Alarm Libraries"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Alarm-2.0.4.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE=" horde-Horde_Db horde-Horde_Log horde-Horde_Mail horde-Horde_Mime horde-Horde_Notification horde-Horde_Perms horde-Horde_Prefs horde-Horde_Test"

DEPEND=">=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Date-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Translation-2.0.0
	horde-Horde_Db? ( >=dev-php/horde-Horde_Db-2.0.0 )
	horde-Horde_Log? ( >=dev-php/horde-Horde_Log-2.0.0 )
	horde-Horde_Mail? ( >=dev-php/horde-Horde_Mail-2.0.0 )
	horde-Horde_Mime? ( >=dev-php/horde-Horde_Mime-2.0.0 )
	horde-Horde_Notification? ( >=dev-php/horde-Horde_Notification-2.0.0 )
	horde-Horde_Perms? ( >=dev-php/horde-Horde_Perms-2.0.0 )
	horde-Horde_Prefs? ( >=dev-php/horde-Horde_Prefs-2.0.0 )
	horde-Horde_Test? ( >=dev-php/horde-Horde_Test-2.1.0 )
	"
RDEPEND="${DEPEND}"
