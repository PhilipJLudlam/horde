# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.4"
PHP_PEAR_PKG_NAME="Horde_Kolab_Storage"

inherit php-pear-lib-r1
S="${WORKDIR}/${PHP_PEAR_PKG_NAME}-${PEAR_PV}"


DESCRIPTION="A package for handling Kolab data stored on an IMAP server"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Kolab_Storage-2.0.4.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE="horde-horde_imap_client horde-horde_history horde-horde_test pear-http_request pear-net_imap"

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Cache-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Kolab_Format-2.0.0
	>=dev-php/horde-Horde_Mime-2.0.0
	>=dev-php/horde-Horde_Translation-2.0.0
	>=dev-php/horde-Horde_Support-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-horde_imap_client? ( >=dev-php/horde-Horde_Imap_Client-2.0.0 )
	horde-horde_history? ( >=dev-php/horde-Horde_History-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-Horde_Test-2.1.0 )
	pear-http_request? ( dev-php/PEAR-HTTP_Request )
	pear-net_imap? ( >=dev-php/PEAR-Net_IMAP-1.1.0 )"
