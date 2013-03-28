# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.2"
PHP_PEAR_PKG_NAME="Horde_Text_Diff"

inherit php-pear-r1

DESCRIPTION="Engine for performing and rendering text diffs"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Text_Diff-2.0.2.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE=" horde-Horde_Test pecl-xdiff"

DEPEND=">=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-Horde_Test? ( >=dev-php/horde-Horde_Test-2.1.0 )
	pecl-xdiff? ( dev-php/pecl-xdiff )
	"
RDEPEND="${DEPEND}"
