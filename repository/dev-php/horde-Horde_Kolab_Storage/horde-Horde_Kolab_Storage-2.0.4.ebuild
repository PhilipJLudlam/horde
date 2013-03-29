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
KEYWORDS="~~amd64"
IUSE="horde-horde_imap_client horde-horde_history horde-horde_test pear-http_request pear-net_imap"

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_cache-2.0.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_kolab_format-2.0.0
	>=dev-php/horde-horde_mime-2.0.0
	>=dev-php/horde-horde_translation-2.0.0
	>=dev-php/horde-horde_support-2.0.0
	>=dev-php/horde-horde_util-2.0.0
	horde-horde_imap_client? ( >=dev-php/horde-horde_imap_client-2.0.0 )
	horde-horde_history? ( >=dev-php/horde-horde_history-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-horde_test-2.1.0 )
	pear-http_request? ( dev-php/pear-http_request )
	pear-net_imap? ( >=dev-php/pear-net_imap-1.1.0 )"
