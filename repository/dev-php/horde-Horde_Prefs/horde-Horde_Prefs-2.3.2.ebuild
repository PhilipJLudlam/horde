# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.3.2"
PHP_PEAR_PKG_NAME="Horde_Prefs"

inherit php-pear-lib-r1
S="${WORKDIR}/${PHP_PEAR_PKG_NAME}-${PEAR_PV}"


DESCRIPTION="Horde Preferences API"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Prefs-2.3.2.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE="horde-horde_autoloader horde-horde_db horde-horde_image horde-horde_imsp horde-horde_kolab_storage horde-horde_test"

DEPEND="dev-lang/php[json]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Mail-2.0.0
	>=dev-php/horde-Horde_Mime-2.0.0
	>=dev-php/horde-Horde_Translation-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-horde_autoloader? ( >=dev-php/horde-Horde_Autoloader-2.0.0 )
	horde-horde_db? ( >=dev-php/horde-Horde_Db-2.0.0 )
	horde-horde_image? ( >=dev-php/horde-Horde_Image-2.0.0 )
	horde-horde_imsp? ( >=dev-php/horde-Horde_Imsp-2.0.0 )
	horde-horde_kolab_storage? ( >=dev-php/horde-Horde_Kolab_Storage-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-Horde_Test-2.1.0 )"
