# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.2"
PHP_PEAR_PKG_NAME="Horde_ElasticSearch"

inherit php-pear-lib-r1
php-pear-lib-r1_pkg_setup pear.horde.org
S="${WORKDIR}/${PHP_PEAR_PKG_NAME}-${PEAR_PV}"


DESCRIPTION="Horde ElasticSearch client"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_ElasticSearch-1.0.2.tgz"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Http-2.0.0"
