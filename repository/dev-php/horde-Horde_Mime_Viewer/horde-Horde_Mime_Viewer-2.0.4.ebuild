# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.4"
PHP_PEAR_PKG_NAME="Horde_Mime_Viewer"

inherit php-pear-r1

DESCRIPTION="Horde MIME Viewer Library"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Mime_Viewer-2.0.4.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~~amd64"
IUSE=""

DEPEND="dev-lang/php[xml]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_browser-2.0.0
	>=dev-php/horde-horde_compress-2.0.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_mime-2.0.0
	>=dev-php/horde-horde_text_filter-2.0.0
	>=dev-php/horde-horde_text_flowed-2.0.0
	>=dev-php/horde-horde_util-2.0.0
	>=dev-php/horde-horde_translation-2.0.0"
