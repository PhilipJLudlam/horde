# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.2"
PHP_PEAR_PKG_NAME="whups"

inherit php-pear-r1

DESCRIPTION="Ticket-tracking application"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/whups-2.0.2.tgz"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="~~amd64"
IUSE=""

DEPEND="dev-lang/php[nls,json]
	>=dev-lang/php-5.2.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=www-apps/horde-horde-4.0.0
	>=dev-php/horde-horde_auth-1.0.0
	>=dev-php/horde-horde_autoloader-1.0.0
	>=dev-php/horde-horde_compress-1.0.0
	>=dev-php/horde-horde_core-1.0.0
	>=dev-php/horde-horde_date-1.0.0
	>=dev-php/horde-horde_db-1.1.0
	>=dev-php/horde-horde_exception-1.0.0
	>=dev-php/horde-horde_form-1.0.0
	>=dev-php/horde-horde_group-1.0.0
	>=dev-php/horde-horde_mail-1.0.0
	>=dev-php/horde-horde_mime-1.2.0
	>=dev-php/horde-horde_mime_viewer-1.0.0
	>=dev-php/horde-horde_notification-1.0.0
	>=dev-php/horde-horde_perms-1.0.3
	>=dev-php/horde-horde_prefs-1.0.0
	>=dev-php/horde-horde_scheduler-1.0.1
	>=dev-php/horde-horde_share-1.0.0
	>=dev-php/horde-horde_support-1.0.0
	>=dev-php/horde-horde_text_filter-1.0.0
	>=dev-php/horde-horde_util-1.0.0
	>=dev-php/horde-horde_vfs-1.0.0
	>=dev-php/horde-horde_view-1.0.0"
