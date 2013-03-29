# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.4"
PHP_PEAR_PKG_NAME="Horde_Image"

inherit php-pear-r1

DESCRIPTION="Horde Image API"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Image-2.0.4.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~~amd64"
IUSE="horde-horde_test pear-xml_svg"

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Support-2.0.0
	>=dev-php/horde-Horde_Translation-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-horde_test? ( >=dev-php/horde-Horde_Test-2.1.0 )
	pear-xml_svg? ( dev-php/PEAR-XML_SVG )"
