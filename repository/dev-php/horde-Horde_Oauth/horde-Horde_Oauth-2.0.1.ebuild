# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.1"
PHP_PEAR_PKG_NAME="Horde_Oauth"

inherit php-pear-r1

DESCRIPTION="Horde OAuth client/server"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Oauth-2.0.1.tgz"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="~~amd64"
IUSE=""

DEPEND="dev-lang/php[hash,ssl]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_http-2.0.0"
