# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.8.0"
PHP_PEAR_PKG_NAME="Horde_Imap_Client"

inherit php-pear-r1

DESCRIPTION="Horde IMAP Client"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Imap_Client-2.8.0.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE="horde-horde_cache horde-horde_secret horde-horde_stream_filter horde-horde_test"

DEPEND="dev-lang/php[hash]
	>=dev-lang/php-5.3.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_mail-2.0.0
	>=dev-php/horde-horde_mime-2.0.0
	>=dev-php/horde-horde_stream-1.0.0
	>=dev-php/horde-horde_util-2.0.0
	horde-horde_cache? ( >=dev-php/horde-horde_cache-2.0.0 )
	horde-horde_secret? ( >=dev-php/horde-horde_secret-2.0.0 )
	horde-horde_stream_filter? ( >=dev-php/horde-horde_stream_filter-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-horde_test-2.1.0 )"
