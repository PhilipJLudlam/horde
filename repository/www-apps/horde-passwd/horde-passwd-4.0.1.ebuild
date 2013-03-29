# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="4.0.1"
PHP_PEAR_PKG_NAME="passwd"

inherit php-pear-r1

DESCRIPTION="Horde password changing application"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/passwd-4.0.1.tgz"

LICENSE="GPL-2.0"
SLOT="0"
KEYWORDS="~~amd64"
IUSE="horde-horde_db horde-horde_ldap horde-horde_vfs pear-crypt_chap"

DEPEND="dev-lang/php[nls]
	>=dev-lang/php-5.2.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=www-apps/horde-horde-4.0.0
	>=dev-php/horde-horde_auth-1.4.0
	>=dev-php/horde-horde_core-1.3.0
	>=dev-php/horde-horde_exception-1.0.0
	>=dev-php/horde-horde_injector-1.0.0
	>=dev-php/horde-horde_util-1.0.0
	>=dev-php/horde-horde_view-1.0.0
	horde-horde_db? ( >=dev-php/horde-horde_db-1.0.0 )
	horde-horde_ldap? ( >=dev-php/horde-horde_ldap-1.0.0 )
	horde-horde_vfs? ( >=dev-php/horde-horde_vfs-1.0.0 )
	pear-crypt_chap? ( dev-php/pear-crypt_chap )"
