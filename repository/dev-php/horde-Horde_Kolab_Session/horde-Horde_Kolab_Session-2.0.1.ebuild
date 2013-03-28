# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.1"
PHP_PEAR_PKG_NAME="Horde_Kolab_Session"

inherit php-pear-r1

DESCRIPTION="A package managing an active Kolab session"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Kolab_Session-2.0.1.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE=" horde-Horde_Imap_Client horde-Horde_Kolab_Server horde-Horde_Log horde-Horde_Test"

DEPEND=">=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Exception-2.0.0
	horde-Horde_Imap_Client? ( >=dev-php/horde-Horde_Imap_Client-2.0.0 )
	horde-Horde_Kolab_Server? ( >=dev-php/horde-Horde_Kolab_Server-2.0.0 )
	horde-Horde_Log? ( >=dev-php/horde-Horde_Log-2.0.0 )
	horde-Horde_Test? ( >=dev-php/horde-Horde_Test-2.1.0 )
	"
RDEPEND="${DEPEND}"
