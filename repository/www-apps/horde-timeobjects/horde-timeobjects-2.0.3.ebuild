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
IUSE="horde-horde_service_facebook horde-horde_service_weather"

DEPEND="dev-lang/php[nls]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_core-2.0.0
	>=dev-php/horde-horde_date-2.0.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_url-2.0.0
	>=dev-php/horde-horde_util-2.0.0
	horde-horde_service_facebook? ( >=dev-php/horde-horde_service_facebook-2.0.0 )
	horde-horde_service_weather? ( >=dev-php/horde-horde_service_weather-2.0.0 )"
