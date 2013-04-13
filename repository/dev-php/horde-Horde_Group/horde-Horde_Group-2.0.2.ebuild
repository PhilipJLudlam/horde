# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.2"
PHP_PEAR_PKG_NAME="Horde_Group"

inherit php-pear-r1

DESCRIPTION="Horde User Groups System"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Group-2.0.2.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE="horde-horde_db horde-horde_ldap horde-horde_test"

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-horde_db? ( >=dev-php/horde-Horde_Db-2.0.0 )
	horde-horde_ldap? ( >=dev-php/horde-Horde_Ldap-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-Horde_Test-2.1.0 )"