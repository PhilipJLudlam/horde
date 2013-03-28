# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="4.0.4"
PHP_PEAR_PKG_NAME="kronolith"

inherit php-pear-r1

DESCRIPTION="A web based calendar"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/kronolith-4.0.4.tgz"

LICENSE="GPL-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=" horde-nag horde-timeobjects horde-Horde_ActiveSync horde-Horde_Db horde-Horde_Test PEAR-Date_Holidays"

DEPEND="dev-lang/php[nls,json,simplexml]
    >=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.7.0
	>=www-apps/horde-content-2.0.0
	>=www-apps/horde-horde-5.0.0
	>=dev-php/horde-Horde_Auth-2.0.0
	>=dev-php/horde-Horde_Autoloader-2.0.0
	>=dev-php/horde-Horde_Core-2.0.0
	>=dev-php/horde-Horde_Data-2.0.0
	>=dev-php/horde-Horde_Date-2.0.0
	>=dev-php/horde-Horde_Date_Parser-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Form-2.0.0
	>=dev-php/horde-Horde_Group-2.0.0
	>=dev-php/horde-Horde_Http-2.0.0
	>=dev-php/horde-Horde_History-2.0.0
	>=dev-php/horde-Horde_Icalendar-2.0.0
	>=dev-php/horde-Horde_Image-2.0.0
	>=dev-php/horde-Horde_Lock-2.0.0
	>=dev-php/horde-Horde_LoginTasks-2.0.0
	>=dev-php/horde-Horde_Mail-2.0.0
	>=dev-php/horde-Horde_Mime-2.0.0
	>=dev-php/horde-Horde_Nls-2.0.0
	>=dev-php/horde-Horde_Notification-2.0.0
	>=dev-php/horde-Horde_Perms-2.0.0
	>=dev-php/horde-Horde_Serialize-2.0.0
	>=dev-php/horde-Horde_Share-2.0.0
	>=dev-php/horde-Horde_Support-2.0.0
	>=dev-php/horde-Horde_Text_Filter-2.0.0
	>=dev-php/horde-Horde_Timezone-1.0.0
	>=dev-php/horde-Horde_Url-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	>=dev-php/horde-Horde_View-2.0.0
	dev-php/PEAR-Date
	horde-nag? ( >=www-apps/horde-nag-4.0.0 )
	horde-timeobjects? ( >=www-apps/horde-timeobjects-2.0.0 )
	horde-Horde_ActiveSync? ( >=dev-php/horde-Horde_ActiveSync-2.0.0 )
	horde-Horde_Db? ( >=dev-php/horde-Horde_Db-2.0.0 )
	horde-Horde_Test? ( >=dev-php/horde-Horde_Test-2.0.0 )
	PEAR-Date_Holidays? ( >=dev-php/PEAR-Date_Holidays-0.21.0 )
	"
RDEPEND="${DEPEND}"
