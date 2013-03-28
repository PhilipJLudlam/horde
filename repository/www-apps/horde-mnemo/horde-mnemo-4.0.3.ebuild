# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="4.0.3"
PHP_PEAR_PKG_NAME="mnemo"

inherit php-pear-r1

DESCRIPTION="A web based notes manager"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/mnemo-4.0.3.tgz"

LICENSE="ASL"
SLOT="0"
KEYWORDS="~amd64"
IUSE="horde-horde_cli horde-horde_crypt horde-horde_db horde-horde_pdf horde-horde_test"

DEPEND="dev-lang/php[nls]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=www-apps/horde-horde-5.0.0
	>=dev-php/horde-horde_auth-2.0.0
	>=dev-php/horde-horde_core-2.0.0
	>=dev-php/horde-horde_data-2.0.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_form-2.0.0
	>=dev-php/horde-horde_group-2.0.0
	>=dev-php/horde-horde_history-2.0.0
	>=dev-php/horde-horde_icalendar-2.0.0
	>=dev-php/horde-horde_injector-2.0.0
	>=dev-php/horde-horde_perms-2.0.0
	>=dev-php/horde-horde_prefs-2.0.0
	>=dev-php/horde-horde_share-2.0.0
	>=dev-php/horde-horde_support-2.0.0
	>=dev-php/horde-horde_text_filter-2.0.0
	>=dev-php/horde-horde_util-2.0.0
	horde-horde_cli? ( >=dev-php/horde-horde_cli-2.0.0 )
	horde-horde_crypt? ( >=dev-php/horde-horde_crypt-2.0.0 )
	horde-horde_db? ( >=dev-php/horde-horde_db-2.0.0 )
	horde-horde_pdf? ( >=dev-php/horde-horde_pdf-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-horde_test-2.0.0 )"
