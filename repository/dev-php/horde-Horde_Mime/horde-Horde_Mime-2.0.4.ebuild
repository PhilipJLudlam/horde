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
KEYWORDS="~amd64"
IUSE=" horde-Horde_Nls horde-Horde_Test horde-Horde_Text_Filter PEAR-Net_DNS2 pecl-idn pecl-intl"

DEPEND=">=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Mail-2.0.0
	>=dev-php/horde-Horde_Stream_Filter-2.0.0
	>=dev-php/horde-Horde_Support-2.0.0
	>=dev-php/horde-Horde_Text_Flowed-2.0.0
	>=dev-php/horde-Horde_Translation-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-Horde_Nls? ( >=dev-php/horde-Horde_Nls-2.0.0 )
	horde-Horde_Test? ( >=dev-php/horde-Horde_Test-2.1.0 )
	horde-Horde_Text_Filter? ( >=dev-php/horde-Horde_Text_Filter-2.0.0 )
	PEAR-Net_DNS2? ( dev-php/PEAR-Net_DNS2 )
	pecl-idn? ( dev-php/pecl-idn )
	pecl-intl? ( dev-php/pecl-intl )
	"
RDEPEND="${DEPEND}"
