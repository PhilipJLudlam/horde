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
KEYWORDS="~amd64"
IUSE=" horde-Horde_Auth horde-Horde_Core horde-Horde_Db horde-Horde_Kolab_Session horde-Horde_Mime horde-Horde_Perms horde-Horde_Test pecl-ssh2"

DEPEND=">=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Translation-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-Horde_Auth? ( >=dev-php/horde-Horde_Auth-2.0.0 )
	horde-Horde_Core? ( >=dev-php/horde-Horde_Core-2.0.0 )
	horde-Horde_Db? ( >=dev-php/horde-Horde_Db-2.0.0 )
	horde-Horde_Kolab_Session? ( >=dev-php/horde-Horde_Kolab_Session-2.0.0 )
	horde-Horde_Mime? ( >=dev-php/horde-Horde_Mime-2.0.0 )
	horde-Horde_Perms? ( >=dev-php/horde-Horde_Perms-2.0.0 )
	horde-Horde_Test? ( >=dev-php/horde-Horde_Test-2.1.0 )
	pecl-ssh2? ( >=dev-php/pecl-ssh2-0.10 )
	"
RDEPEND="${DEPEND}"
