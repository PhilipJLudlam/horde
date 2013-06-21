# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.11.6"
PHP_PEAR_PKG_NAME="Horde_Imap_Client"

inherit php-pear-lib-r1
S="${WORKDIR}/${PHP_PEAR_PKG_NAME}-${PEAR_PV}"

DESCRIPTION="Horde IMAP Client"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Imap_Client-2.11.6.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE="horde-horde_cache horde-horde_compress_fast horde-horde_db horde-horde_mongo horde-horde_secret horde-horde_stream_filter horde-horde_test"

DEPEND="dev-lang/php[hash]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Mail-2.0.0
	>=dev-php/horde-Horde_Mime-2.0.0
	>=dev-php/horde-Horde_Stream-1.0.0
	>=dev-php/horde-Horde_Translation-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-horde_cache? ( >=dev-php/horde-Horde_Cache-2.0.0 )
	horde-horde_compress_fast? ( >=dev-php/horde-Horde_Compress_Fast-1.0.0 )
	horde-horde_db? ( >=dev-php/horde-Horde_Db-2.0.0 )
	horde-horde_mongo? ( >=dev-php/horde-Horde_Mongo-1.0.0 )
	horde-horde_secret? ( >=dev-php/horde-Horde_Secret-2.0.0 )
	horde-horde_stream_filter? ( >=dev-php/horde-Horde_Stream_Filter-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-Horde_Test-2.1.0 )"
