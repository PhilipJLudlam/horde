# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.1"
PHP_PEAR_PKG_NAME="PHPUnit_Story"

inherit php-pear-r1

DESCRIPTION="Story extension for PHPUnit to facilitate Behaviour-Driven Development."
HOMEPAGE="pear.phpunit.de"
SRC_URI="http://pear.phpunit.de/get/PHPUnit_Story-1.0.1.tgz"

LICENSE="The BSD 3-Clause"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-lang/php[spl]
	>=dev-lang/php-5.2.7"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.9.4"
PDEPEND=">=dev-php/phpunit-PHPUnit-3.6.0_rc1"
