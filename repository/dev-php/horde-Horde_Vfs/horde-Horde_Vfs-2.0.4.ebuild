# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.4"
PHP_PEAR_PKG_NAME="Horde_Vfs"

inherit php-pear-r1

DESCRIPTION="Virtual File System API"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Vfs-2.0.4.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~~amd64"
IUSE="horde-horde_auth horde-horde_core horde-horde_db horde-horde_kolab_session horde-horde_mime horde-horde_perms horde-horde_test pecl-ssh2"

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_translation-2.0.0
	>=dev-php/horde-horde_util-2.0.0
	horde-horde_auth? ( >=dev-php/horde-horde_auth-2.0.0 )
	horde-horde_core? ( >=dev-php/horde-horde_core-2.0.0 )
	horde-horde_db? ( >=dev-php/horde-horde_db-2.0.0 )
	horde-horde_kolab_session? ( >=dev-php/horde-horde_kolab_session-2.0.0 )
	horde-horde_mime? ( >=dev-php/horde-horde_mime-2.0.0 )
	horde-horde_perms? ( >=dev-php/horde-horde_perms-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-horde_test-2.1.0 )
	pecl-ssh2? ( >=dev-php/pecl-ssh2-0.10 )"