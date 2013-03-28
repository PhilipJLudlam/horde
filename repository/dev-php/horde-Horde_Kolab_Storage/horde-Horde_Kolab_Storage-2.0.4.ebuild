# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.4"
PHP_PEAR_PKG_NAME="Horde_Kolab_Storage"

inherit php-pear-r1

DESCRIPTION="A package for handling Kolab data stored on an IMAP server"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Kolab_Storage-2.0.4.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE=" horde-Horde_Imap_Client horde-Horde_History horde-Horde_Test PEAR-HTTP_Request PEAR-Net_IMAP"

DEPEND=">=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Cache-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Kolab_Format-2.0.0
	>=dev-php/horde-Horde_Mime-2.0.0
	>=dev-php/horde-Horde_Translation-2.0.0
	>=dev-php/horde-Horde_Support-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-Horde_Imap_Client? ( >=dev-php/horde-Horde_Imap_Client-2.0.0 )
	horde-Horde_History? ( >=dev-php/horde-Horde_History-2.0.0 )
	horde-Horde_Test? ( >=dev-php/horde-Horde_Test-2.1.0 )
	PEAR-HTTP_Request? ( dev-php/PEAR-HTTP_Request )
	PEAR-Net_IMAP? ( >=dev-php/PEAR-Net_IMAP-1.1.0 )
	"
RDEPEND="${DEPEND}"
