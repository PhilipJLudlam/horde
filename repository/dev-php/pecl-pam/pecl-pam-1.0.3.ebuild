# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.3"
PHP_PEAR_PKG_NAME="pam"

inherit php-pear-r1

DESCRIPTION="PAM integration"
HOMEPAGE="pecl.php.net"
SRC_URI="http://pecl.php.net/get/pam-1.0.3.tgz"

LICENSE="PHP"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-4.3.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.0_beta1"
