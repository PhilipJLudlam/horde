# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="4.0.3"
PHP_PEAR_PKG_NAME="mnemo"

inherit php-pear-r1

DESCRIPTION="A web based notes manager"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/mnemo-4.0.3.tgz"

LICENSE="ASL"
SLOT="0"
KEYWORDS="~amd64"
IUSE=" horde-Horde_Cli horde-Horde_Crypt horde-Horde_Db horde-Horde_Pdf horde-Horde_Test"

DEPEND="dev-lang/php[nls]
    >=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.7.0
	>=www-apps/horde-horde-5.0.0
	>=dev-php/horde-Horde_Auth-2.0.0
	>=dev-php/horde-Horde_Core-2.0.0
	>=dev-php/horde-Horde_Data-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Form-2.0.0
	>=dev-php/horde-Horde_Group-2.0.0
	>=dev-php/horde-Horde_History-2.0.0
	>=dev-php/horde-Horde_Icalendar-2.0.0
	>=dev-php/horde-Horde_Injector-2.0.0
	>=dev-php/horde-Horde_Perms-2.0.0
	>=dev-php/horde-Horde_Prefs-2.0.0
	>=dev-php/horde-Horde_Share-2.0.0
	>=dev-php/horde-Horde_Support-2.0.0
	>=dev-php/horde-Horde_Text_Filter-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-Horde_Cli? ( >=dev-php/horde-Horde_Cli-2.0.0 )
	horde-Horde_Crypt? ( >=dev-php/horde-Horde_Crypt-2.0.0 )
	horde-Horde_Db? ( >=dev-php/horde-Horde_Db-2.0.0 )
	horde-Horde_Pdf? ( >=dev-php/horde-Horde_Pdf-2.0.0 )
	horde-Horde_Test? ( >=dev-php/horde-Horde_Test-2.0.0 )
	"
RDEPEND="${DEPEND}"
