# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.2"
PHP_PEAR_PKG_NAME="Horde_Kolab_Server"

inherit php-pear-r1

DESCRIPTION="A package for manipulating the Kolab user database"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Kolab_Server-2.0.2.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~~amd64"
IUSE="horde-horde_date horde-horde_ldap horde-horde_test phpunit-phpunit_story"

DEPEND="dev-lang/php[hash]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_auth-2.0.0
	>=dev-php/horde-horde_exception-2.0.0
	horde-horde_date? ( >=dev-php/horde-horde_date-2.0.0 )
	horde-horde_ldap? ( >=dev-php/horde-horde_ldap-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-horde_test-2.1.0 )
	phpunit-phpunit_story? ( dev-php/phpunit-phpunit_story )"