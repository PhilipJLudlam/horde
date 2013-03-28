# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="4.0.3"
PHP_PEAR_PKG_NAME="turba"

inherit php-pear-r1

DESCRIPTION="A web based address book"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/turba-4.0.3.tgz"

LICENSE="ASL"
SLOT="0"
KEYWORDS="~amd64"
IUSE=" horde-Horde_ActiveSync horde-Horde_Db horde-Horde_Imsp horde-Horde_Ldap horde-Horde_Service_Facebook"

DEPEND="dev-lang/php[nls,hash,json]
    >=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.7.0
	>=www-apps/horde-horde-5.0.0
	>=dev-php/horde-Horde_Auth-2.0.0
	>=dev-php/horde-Horde_Core-2.0.0
	>=dev-php/horde-Horde_Data-2.0.0
	>=dev-php/horde-Horde_Date-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Form-2.0.0
	>=dev-php/horde-Horde_Group-2.0.0
	>=dev-php/horde-Horde_History-2.0.0
	>=dev-php/horde-Horde_Icalendar-2.0.0
	>=dev-php/horde-Horde_Mail-2.0.0
	>=dev-php/horde-Horde_Mime-2.0.0
	>=dev-php/horde-Horde_Nls-2.0.0
	>=dev-php/horde-Horde_Perms-2.0.0
	>=dev-php/horde-Horde_Prefs-2.0.0
	>=dev-php/horde-Horde_Serialize-2.0.0
	>=dev-php/horde-Horde_Share-2.0.0
	>=dev-php/horde-Horde_Support-2.0.0
	>=dev-php/horde-Horde_Url-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	>=dev-php/horde-Horde_View-2.0.0
	horde-Horde_ActiveSync? ( >=dev-php/horde-Horde_ActiveSync-2.0.0 )
	horde-Horde_Db? ( >=dev-php/horde-Horde_Db-2.0.0 )
	horde-Horde_Imsp? ( >=dev-php/horde-Horde_Imsp-2.0.0 )
	horde-Horde_Ldap? ( >=dev-php/horde-Horde_Ldap-2.0.0 )
	horde-Horde_Service_Facebook? ( >=dev-php/horde-Horde_Service_Facebook-2.0.0 )
	"
RDEPEND="${DEPEND}"
