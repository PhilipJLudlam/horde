# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.3"
PHP_PEAR_PKG_NAME="timeobjects"

inherit php-pear-r1

DESCRIPTION="Horde timeobjects application"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/timeobjects-2.0.3.tgz"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="~amd64"
IUSE=" horde-Horde_Service_Facebook horde-Horde_Service_Weather"

DEPEND="dev-lang/php[nls]
    >=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Core-2.0.0
	>=dev-php/horde-Horde_Date-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Url-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-Horde_Service_Facebook? ( >=dev-php/horde-Horde_Service_Facebook-2.0.0 )
	horde-Horde_Service_Weather? ( >=dev-php/horde-Horde_Service_Weather-2.0.0 )
	"
RDEPEND="${DEPEND}"
