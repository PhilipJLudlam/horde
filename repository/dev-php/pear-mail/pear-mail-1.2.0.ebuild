# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.2.0"
PHP_PEAR_PKG_NAME="Mail"

inherit php-pear-r1

DESCRIPTION="Class that provides multiple interfaces for sending emails"
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Mail-1.2.0.tgz"

LICENSE="BSD Style"
SLOT="0"
KEYWORDS="~amd64"
IUSE="pear-net_smtp"

DEPEND=">=dev-lang/php-4.4.9"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.5.6
	pear-net_smtp? ( >=dev-php/pear-net_smtp-1.4.1 )"
