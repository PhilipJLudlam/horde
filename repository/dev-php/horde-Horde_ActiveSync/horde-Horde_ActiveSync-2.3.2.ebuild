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
IUSE="horde-horde_db horde-horde_imap_client horde-horde_mail horde-horde_text_filter horde-horde_test"

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Date-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Icalendar-2.0.0
	>=dev-php/horde-Horde_Mime-2.0.0
	>=dev-php/horde-Horde_Support-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-horde_db? ( >=dev-php/horde-Horde_Db-2.0.0 )
	horde-horde_imap_client? ( >=dev-php/horde-Horde_Imap_Client-2.1.3 )
	horde-horde_mail? ( >=dev-php/horde-Horde_Mail-2.0.0 )
	horde-horde_text_filter? ( >=dev-php/horde-Horde_Text_Filter-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-Horde_Test-2.1.0 )"
