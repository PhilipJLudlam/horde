# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.0"
PHP_PEAR_PKG_NAME="trean"

inherit php-pear-r1

DESCRIPTION="Web-based bookmarks application"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/trean-1.0.0.tgz"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="~amd64"
IUSE="horde-horde_browser horde-horde_cache horde-horde_queue"

DEPEND="dev-lang/php[nls,json]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=www-apps/horde-horde-5.0.2
	>=www-apps/horde-content-2.0.1
	>=dev-php/horde-horde_autoloader-2.0.0
	>=dev-php/horde-horde_controller-2.0.0
	>=dev-php/horde-horde_core-2.0.0
	>=dev-php/horde-horde_date-2.0.0
	>=dev-php/horde-horde_db-2.0.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_form-2.0.0
	>=dev-php/horde-horde_notification-2.0.0
	>=dev-php/horde-horde_perms-2.0.0
	>=dev-php/horde-horde_util-2.0.0
	>=dev-php/horde-horde_vfs-2.0.0
	>=dev-php/horde-horde_view-2.0.0
	horde-horde_browser? ( >=dev-php/horde-horde_browser-2.0.0 )
	horde-horde_cache? ( >=dev-php/horde-horde_cache-2.0.0 )
	horde-horde_queue? ( >=dev-php/horde-horde_queue-1.0.0_alpha1 )"
