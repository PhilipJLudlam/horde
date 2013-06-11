# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.5"
PHP_PEAR_PKG_NAME="Horde_Mime_Viewer"

inherit php-pear-lib-r1
S="${WORKDIR}/${PHP_PEAR_PKG_NAME}-${PEAR_PV}"

DESCRIPTION="Horde MIME Viewer Library"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Mime_Viewer-2.0.5.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE=""

DEPEND="dev-lang/php[xml]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Browser-2.0.0
	>=dev-php/horde-Horde_Compress-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Mime-2.0.0
	>=dev-php/horde-Horde_Text_Filter-2.0.0
	>=dev-php/horde-Horde_Text_Flowed-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	>=dev-php/horde-Horde_Translation-2.0.0"
