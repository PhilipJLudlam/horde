# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.3"
PHP_PEAR_PKG_NAME="Horde_Rpc"

inherit php-pear-r1

DESCRIPTION="Horde RPC API"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Rpc-2.0.3.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE=" horde-Horde_ActiveSync horde-Horde_Http horde-Horde_Lock horde-Horde_SyncMl"

DEPEND=">=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Core-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Perms-2.0.0
	>=dev-php/horde-Horde_Serialize-2.0.0
	>=dev-php/horde-Horde_Support-2.0.0
	>=dev-php/horde-Horde_Translation-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	>=dev-php/horde-Horde_Xml_Element-2.0.0
	horde-Horde_ActiveSync? ( >=dev-php/horde-Horde_ActiveSync-2.0.0 )
	horde-Horde_Http? ( >=dev-php/horde-Horde_Http-2.0.0 )
	horde-Horde_Lock? ( >=dev-php/horde-Horde_Lock-2.0.0 )
	horde-Horde_SyncMl? ( >=dev-php/horde-Horde_SyncMl-2.0.0 )
	"
RDEPEND="${DEPEND}"
