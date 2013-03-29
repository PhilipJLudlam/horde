# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="4.0.4"
PHP_PEAR_PKG_NAME="kronolith"

inherit php-pear-r1

DESCRIPTION="A web based calendar"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/kronolith-4.0.4.tgz"

LICENSE="GPL-2.0"
SLOT="0"
KEYWORDS="~~amd64"
IUSE="horde-nag horde-timeobjects horde-horde_activesync horde-horde_db horde-horde_test pear-date_holidays"

DEPEND="dev-lang/php[nls,json,simplexml]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=www-apps/horde-content-2.0.0
	>=www-apps/horde-horde-5.0.0
	>=dev-php/horde-horde_auth-2.0.0
	>=dev-php/horde-horde_autoloader-2.0.0
	>=dev-php/horde-horde_core-2.0.0
	>=dev-php/horde-horde_data-2.0.0
	>=dev-php/horde-horde_date-2.0.0
	>=dev-php/horde-horde_date_parser-2.0.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_form-2.0.0
	>=dev-php/horde-horde_group-2.0.0
	>=dev-php/horde-horde_http-2.0.0
	>=dev-php/horde-horde_history-2.0.0
	>=dev-php/horde-horde_icalendar-2.0.0
	>=dev-php/horde-horde_image-2.0.0
	>=dev-php/horde-horde_lock-2.0.0
	>=dev-php/horde-horde_logintasks-2.0.0
	>=dev-php/horde-horde_mail-2.0.0
	>=dev-php/horde-horde_mime-2.0.0
	>=dev-php/horde-horde_nls-2.0.0
	>=dev-php/horde-horde_notification-2.0.0
	>=dev-php/horde-horde_perms-2.0.0
	>=dev-php/horde-horde_serialize-2.0.0
	>=dev-php/horde-horde_share-2.0.0
	>=dev-php/horde-horde_support-2.0.0
	>=dev-php/horde-horde_text_filter-2.0.0
	>=dev-php/horde-horde_timezone-1.0.0
	>=dev-php/horde-horde_url-2.0.0
	>=dev-php/horde-horde_util-2.0.0
	>=dev-php/horde-horde_view-2.0.0
	dev-php/pear-date
	horde-nag? ( >=www-apps/horde-nag-4.0.0 )
	horde-timeobjects? ( >=www-apps/horde-timeobjects-2.0.0 )
	horde-horde_activesync? ( >=dev-php/horde-horde_activesync-2.0.0 )
	horde-horde_db? ( >=dev-php/horde-horde_db-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-horde_test-2.0.0 )
	pear-date_holidays? ( >=dev-php/pear-date_holidays-0.21.0 )"
