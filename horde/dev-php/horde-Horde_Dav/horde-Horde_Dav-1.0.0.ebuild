# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.0"
PHP_PEAR_PKG_NAME="Horde_Dav"

inherit php-pear-lib-r1
S="${WORKDIR}/${PHP_PEAR_PKG_NAME}-${PEAR_PV}"

DESCRIPTION="Horde library for WebDAV, CalDAV, CardDAV"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Dav-1.0.0.tgz"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE=""

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Auth-2.0.0
	>=dev-php/horde-Horde_Core-2.0.0
	>=dev-php/horde-Horde_Stream-1.2.0"
