# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.4"
PHP_PEAR_PKG_NAME="Horde_Service_Facebook"

inherit php-pear-r1

DESCRIPTION="Horde Facebook client"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Service_Facebook-2.0.4.tgz"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="~~amd64"
IUSE=""

DEPEND="dev-lang/php[json,simplexml]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_http-2.0.0
	>=dev-php/horde-horde_translation-2.0.0
	>=dev-php/horde-horde_support-2.0.0"
