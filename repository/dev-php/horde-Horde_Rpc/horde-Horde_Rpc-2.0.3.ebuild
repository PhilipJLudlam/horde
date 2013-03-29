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
KEYWORDS="~~amd64"
IUSE="horde-horde_activesync horde-horde_http horde-horde_lock horde-horde_syncml"

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_core-2.0.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_perms-2.0.0
	>=dev-php/horde-horde_serialize-2.0.0
	>=dev-php/horde-horde_support-2.0.0
	>=dev-php/horde-horde_translation-2.0.0
	>=dev-php/horde-horde_util-2.0.0
	>=dev-php/horde-horde_xml_element-2.0.0
	horde-horde_activesync? ( >=dev-php/horde-horde_activesync-2.0.0 )
	horde-horde_http? ( >=dev-php/horde-horde_http-2.0.0 )
	horde-horde_lock? ( >=dev-php/horde-horde_lock-2.0.0 )
	horde-horde_syncml? ( >=dev-php/horde-horde_syncml-2.0.0 )"
