# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.7.2"
PHP_PEAR_PKG_NAME="Horde_Imap_Client"

inherit php-pear-r1

DESCRIPTION="Horde IMAP Client"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Imap_Client-2.7.2.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE=" horde-Horde_Cache horde-Horde_Secret horde-Horde_Stream_Filter horde-Horde_Test"

DEPEND="dev-lang/php[hash]
    >=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Mail-2.0.0
	>=dev-php/horde-Horde_Mime-2.0.0
	>=dev-php/horde-Horde_Stream-1.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-Horde_Cache? ( >=dev-php/horde-Horde_Cache-2.0.0 )
	horde-Horde_Secret? ( >=dev-php/horde-Horde_Secret-2.0.0 )
	horde-Horde_Stream_Filter? ( >=dev-php/horde-Horde_Stream_Filter-2.0.0 )
	horde-Horde_Test? ( >=dev-php/horde-Horde_Test-2.1.0 )
	"
RDEPEND="${DEPEND}"
