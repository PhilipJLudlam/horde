# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.4"
PHP_PEAR_PKG_NAME="Horde_Mail"

inherit php-pear-r1

DESCRIPTION="Horde Mail Library"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Mail-2.0.4.tgz"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="~~amd64"
IUSE="horde-horde_test pear-net_dns2 pear-net_smtp"

DEPEND=">=dev-lang/php-5.3.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_mime-2.0.0
	>=dev-php/horde-horde_stream_filter-2.0.0
	horde-horde_test? ( >=dev-php/horde-horde_test-2.1.0 )
	pear-net_dns2? ( dev-php/pear-net_dns2 )
	pear-net_smtp? ( >=dev-php/pear-net_smtp-1.6.0 )"
