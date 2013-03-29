# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.2.1"
PHP_PEAR_PKG_NAME="Text_Wiki"

inherit php-pear-r1

DESCRIPTION="Transforms Wiki and BBCode markup into XHTML, LaTeX or plain text markup. This is the base engine for all of the Text_Wiki sub-classes."
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Text_Wiki-1.2.1.tgz"

LICENSE="LGPL"
SLOT="0"
KEYWORDS="~~amd64"
IUSE=""

DEPEND=">=dev-lang/php-4.0.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.4"
