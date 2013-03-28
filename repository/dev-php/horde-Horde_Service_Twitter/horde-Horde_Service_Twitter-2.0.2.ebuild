# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.2"
PHP_PEAR_PKG_NAME="Horde_Service_Twitter"

inherit php-pear-r1

DESCRIPTION="Horde Twitter client"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Service_Twitter-2.0.2.tgz"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Controller-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Http-2.0.0
	>=dev-php/horde-Horde_Oauth-2.0.0
	>=dev-php/horde-Horde_Url-2.0.0
	"
RDEPEND="${DEPEND}"
