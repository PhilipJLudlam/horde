# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.3"
PHP_PEAR_PKG_NAME="Horde_SyncMl"

inherit php-pear-r1

DESCRIPTION="Horde_SyncMl provides an API for processing SyncML requests"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_SyncMl-2.0.3.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE="horde-horde_auth horde-horde_core pear-mdb2"

DEPEND=">=dev-lang/php-5.3.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_date-2.0.0
	>=dev-php/horde-horde_icalendar-2.0.0
	>=dev-php/horde-horde_log-2.0.0
	>=dev-php/horde-horde_support-2.0.0
	>=dev-php/horde-horde_util-2.0.0
	>=dev-php/horde-horde_xml_wbxml-2.0.0
	>=dev-php/horde-horde_translation-2.0.0
	horde-horde_auth? ( >=dev-php/horde-horde_auth-2.0.0 )
	horde-horde_core? ( >=dev-php/horde-horde_core-2.0.0 )
	pear-mdb2? ( dev-php/pear-mdb2 )"
