# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.2"
PHP_PEAR_PKG_NAME="Horde_Nls"

inherit php-pear-lib-r1
S="${WORKDIR}/${PHP_PEAR_PKG_NAME}-${PEAR_PV}"

DESCRIPTION="Native Language Support (NLS)"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Nls-2.0.2.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE="pear-net_dns2 pecl-geoip"

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Translation-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	pear-net_dns2? ( dev-php/PEAR-Net_DNS2 )
	pecl-geoip? ( dev-php/pecl-geoip )"
