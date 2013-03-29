# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.1"
PHP_PEAR_PKG_NAME="Horde_Role"

inherit php-pear-r1

DESCRIPTION="PEAR installer role used to install Horde components"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Role-1.0.1.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~~amd64"
IUSE=""

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0"