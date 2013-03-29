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
KEYWORDS="~~amd64"
IUSE="horde-horde_argv horde-horde_controller horde-horde_elasticsearch"

DEPEND="dev-lang/php[nls,json]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Core-2.0.0
	>=dev-php/horde-Horde_Date-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Db-2.0.0
	>=dev-php/horde-Horde_Injector-2.0.0
	>=dev-php/horde-Horde_Rdo-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-horde_argv? ( >=dev-php/horde-Horde_Argv-2.0.0 )
	horde-horde_controller? ( >=dev-php/horde-Horde_Controller-2.0.0 )
	horde-horde_elasticsearch? ( >=dev-php/horde-Horde_ElasticSearch-1.0.0 )"
