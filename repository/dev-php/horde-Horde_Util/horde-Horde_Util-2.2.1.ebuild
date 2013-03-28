# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.2.1"
PHP_PEAR_PKG_NAME="Horde_Util"

inherit php-pear-r1

DESCRIPTION="Horde Utility Libraries"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Util-2.2.1.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE=" horde-Horde_Imap_Client horde-Horde_Test"

DEPEND="dev-lang/php[xml]
    >=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.7.0
	horde-Horde_Imap_Client? ( >=dev-php/horde-Horde_Imap_Client-2.0.0 )
	horde-Horde_Test? ( >=dev-php/horde-Horde_Test-2.1.0 )
	"
RDEPEND="${DEPEND}"
