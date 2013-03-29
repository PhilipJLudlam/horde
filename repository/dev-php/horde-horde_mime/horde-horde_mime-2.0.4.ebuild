# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.4"
PHP_PEAR_PKG_NAME="Horde_Mime"

inherit php-pear-r1

DESCRIPTION="Horde MIME Library"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Mime-2.0.4.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~~amd64"
IUSE="horde-horde_nls horde-horde_test horde-horde_text_filter pear-net_dns2 pecl-idn pecl-intl"

DEPEND=">=dev-lang/php-5.3.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_mail-2.0.0
	>=dev-php/horde-horde_stream_filter-2.0.0
	>=dev-php/horde-horde_support-2.0.0
	>=dev-php/horde-horde_text_flowed-2.0.0
	>=dev-php/horde-horde_translation-2.0.0
	>=dev-php/horde-horde_util-2.0.0
	horde-horde_nls? ( >=dev-php/horde-horde_nls-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-horde_test-2.1.0 )
	horde-horde_text_filter? ( >=dev-php/horde-horde_text_filter-2.0.0 )
	pear-net_dns2? ( dev-php/pear-net_dns2 )
	pecl-idn? ( dev-php/pecl-idn )
	pecl-intl? ( dev-php/pecl-intl )"
