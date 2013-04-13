# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.3"
PHP_PEAR_PKG_NAME="Horde_Form"

inherit php-pear-lib-r1
php-pear-lib-r1_pkg_setup pear.horde.org
S="${WORKDIR}/${PHP_PEAR_PKG_NAME}-${PEAR_PV}"


DESCRIPTION="Horde Form API"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Form-2.0.3.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Core-2.0.0
	>=dev-php/horde-Horde_Date-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Mail-2.0.0
	>=dev-php/horde-Horde_Mime-2.0.0
	>=dev-php/horde-Horde_Nls-2.0.0
	>=dev-php/horde-Horde_Token-2.0.0
	>=dev-php/horde-Horde_Translation-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0"