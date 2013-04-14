# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.0alpha4"
PHP_PEAR_PKG_NAME="Horde_Pear"

inherit php-pear-lib-r1
S="${WORKDIR}/${PHP_PEAR_PKG_NAME}-${PEAR_PV}"

DESCRIPTION="A library for handling a subset of the PEAR formats and specifications"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Pear-1.0.0alpha4.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE="horde-horde_http horde-horde_test"

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.9.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Xml_Element-2.0.0
	horde-horde_http? ( >=dev-php/horde-Horde_Http-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-Horde_Test-2.1.0 )"
