# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.3.2"
PHP_PEAR_PKG_NAME="Horde_ActiveSync"

inherit php-pear-r1

DESCRIPTION="Horde ActiveSync Server Library"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_ActiveSync-2.3.2.tgz"

LICENSE="GPL-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=" horde-Horde_Db horde-Horde_Imap_Client horde-Horde_Mail horde-Horde_Text_Filter horde-Horde_Test"

DEPEND=">=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Date-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Icalendar-2.0.0
	>=dev-php/horde-Horde_Mime-2.0.0
	>=dev-php/horde-Horde_Support-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-Horde_Db? ( >=dev-php/horde-Horde_Db-2.0.0 )
	horde-Horde_Imap_Client? ( >=dev-php/horde-Horde_Imap_Client-2.1.3 )
	horde-Horde_Mail? ( >=dev-php/horde-Horde_Mail-2.0.0 )
	horde-Horde_Text_Filter? ( >=dev-php/horde-Horde_Text_Filter-2.0.0 )
	horde-Horde_Test? ( >=dev-php/horde-Horde_Test-2.1.0 )
	"
RDEPEND="${DEPEND}"
