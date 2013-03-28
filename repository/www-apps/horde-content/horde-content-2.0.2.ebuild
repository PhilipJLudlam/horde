# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.2"
PHP_PEAR_PKG_NAME="content"

inherit php-pear-r1

DESCRIPTION="Tagging application"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/content-2.0.2.tgz"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="~amd64"
IUSE="horde-horde_argv horde-horde_controller horde-horde_elasticsearch"

DEPEND="dev-lang/php[nls,json]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_core-2.0.0
	>=dev-php/horde-horde_date-2.0.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_db-2.0.0
	>=dev-php/horde-horde_injector-2.0.0
	>=dev-php/horde-horde_rdo-2.0.0
	>=dev-php/horde-horde_util-2.0.0
	horde-horde_argv? ( >=dev-php/horde-horde_argv-2.0.0 )
	horde-horde_controller? ( >=dev-php/horde-horde_controller-2.0.0 )
	horde-horde_elasticsearch? ( >=dev-php/horde-horde_elasticsearch-1.0.0 )"
