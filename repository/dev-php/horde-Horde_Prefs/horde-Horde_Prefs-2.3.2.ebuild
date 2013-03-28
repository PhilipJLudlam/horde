# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.3.2"
PHP_PEAR_PKG_NAME="Horde_Prefs"

inherit php-pear-r1

DESCRIPTION="Horde Preferences API"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Prefs-2.3.2.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE=" horde-Horde_Autoloader horde-Horde_Db horde-Horde_Image horde-Horde_Imsp horde-Horde_Kolab_Storage horde-Horde_Test"

DEPEND="dev-lang/php[json]
    >=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Mail-2.0.0
	>=dev-php/horde-Horde_Mime-2.0.0
	>=dev-php/horde-Horde_Translation-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-Horde_Autoloader? ( >=dev-php/horde-Horde_Autoloader-2.0.0 )
	horde-Horde_Db? ( >=dev-php/horde-Horde_Db-2.0.0 )
	horde-Horde_Image? ( >=dev-php/horde-Horde_Image-2.0.0 )
	horde-Horde_Imsp? ( >=dev-php/horde-Horde_Imsp-2.0.0 )
	horde-Horde_Kolab_Storage? ( >=dev-php/horde-Horde_Kolab_Storage-2.0.0 )
	horde-Horde_Test? ( >=dev-php/horde-Horde_Test-2.1.0 )
	"
RDEPEND="${DEPEND}"
