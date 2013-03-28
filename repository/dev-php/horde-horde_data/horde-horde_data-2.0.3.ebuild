# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.3"
PHP_PEAR_PKG_NAME="Horde_Data"

inherit php-pear-r1

DESCRIPTION="Horde Data API"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Data-2.0.3.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE="horde-horde_test"

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_browser-2.0.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_icalendar-2.0.0
	>=dev-php/horde-horde_mail-2.0.0
	>=dev-php/horde-horde_mime-2.0.0
	>=dev-php/horde-horde_translation-2.0.0
	>=dev-php/horde-horde_util-2.0.0
	horde-horde_test? ( >=dev-php/horde-horde_test-2.1.0 )"
