# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.0alpha4"
PHP_PEAR_PKG_NAME="Horde_Pear"

inherit php-pear-r1

DESCRIPTION="A library for handling a subset of the PEAR formats and specifications"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Pear-1.0.0alpha4.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE=" horde-Horde_Http horde-Horde_Test"

DEPEND=">=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.9.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Xml_Element-2.0.0
	horde-Horde_Http? ( >=dev-php/horde-Horde_Http-2.0.0 )
	horde-Horde_Test? ( >=dev-php/horde-Horde_Test-2.1.0 )
	"
RDEPEND="${DEPEND}"
