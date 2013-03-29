# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.2"
PHP_PEAR_PKG_NAME="Horde_Nls"

inherit php-pear-r1

DESCRIPTION="Native Language Support (NLS)"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Nls-2.0.2.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~~amd64"
IUSE="pear-net_dns2 pecl-geoip"

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_translation-2.0.0
	>=dev-php/horde-horde_util-2.0.0
	pear-net_dns2? ( dev-php/pear-net_dns2 )
	pecl-geoip? ( dev-php/pecl-geoip )"
