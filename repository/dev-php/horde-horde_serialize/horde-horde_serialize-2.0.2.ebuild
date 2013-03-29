# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.2"
PHP_PEAR_PKG_NAME="Horde_Serialize"

inherit php-pear-r1

DESCRIPTION="Data Encapulation API"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Serialize-2.0.2.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~~amd64"
IUSE="horde-horde_imap_client horde-horde_mime horde-horde_test pecl-lzf"

DEPEND=">=dev-lang/php-5.3.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_util-2.0.0
	horde-horde_imap_client? ( >=dev-php/horde-horde_imap_client-2.0.0 )
	horde-horde_mime? ( >=dev-php/horde-horde_mime-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-horde_test-2.1.0 )
	pecl-lzf? ( >=dev-php/pecl-lzf-1.5.2 )"
