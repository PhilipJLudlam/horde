# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="5.0.4"
PHP_PEAR_PKG_NAME="groupware"

inherit php-pear-r1

DESCRIPTION="Horde Groupware"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/groupware-5.0.4.tgz"

LICENSE="OSI certified"
SLOT="0"
KEYWORDS="~amd64"
IUSE="horde-webmail"

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=www-apps/horde-content-2.0.2
	>=www-apps/horde-horde-5.0.4
	>=www-apps/horde-kronolith-4.0.4
	>=www-apps/horde-mnemo-4.0.3
	>=www-apps/horde-nag-4.0.2
	>=www-apps/horde-timeobjects-2.0.3
	>=www-apps/horde-turba-4.0.3
	horde-webmail? ( www-apps/horde-webmail )"
