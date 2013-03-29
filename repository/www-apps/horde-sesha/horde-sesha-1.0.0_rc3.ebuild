# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.0RC3"
PHP_PEAR_PKG_NAME="sesha"

inherit php-pear-r1

DESCRIPTION="A simple Inventory App for Horde"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/sesha-1.0.0RC3.tgz"

LICENSE="GPL-2.0"
SLOT="0"
KEYWORDS="~~amd64"
IUSE=""

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=www-apps/horde-horde-5.0.0
	>=dev-php/horde-Horde_Auth-2.0.0
	>=dev-php/horde-Horde_Autoloader-2.0.0
	>=dev-php/horde-Horde_Core-2.0.0
	>=dev-php/horde-Horde_Db-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Form-2.0.0
	>=dev-php/horde-Horde_Perms-2.0.0
	>=dev-php/horde-Horde_Prefs-2.0.0
	>=dev-php/horde-Horde_Rdo-2.0.0"
