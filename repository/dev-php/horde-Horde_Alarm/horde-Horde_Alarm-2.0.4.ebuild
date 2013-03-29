# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.4"
PHP_PEAR_PKG_NAME="Horde_Alarm"

inherit php-pear-r1

DESCRIPTION="Horde Alarm Libraries"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Alarm-2.0.4.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~~amd64"
IUSE="horde-horde_db horde-horde_log horde-horde_mail horde-horde_mime horde-horde_notification horde-horde_perms horde-horde_prefs horde-horde_test"

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_date-2.0.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_translation-2.0.0
	horde-horde_db? ( >=dev-php/horde-horde_db-2.0.0 )
	horde-horde_log? ( >=dev-php/horde-horde_log-2.0.0 )
	horde-horde_mail? ( >=dev-php/horde-horde_mail-2.0.0 )
	horde-horde_mime? ( >=dev-php/horde-horde_mime-2.0.0 )
	horde-horde_notification? ( >=dev-php/horde-horde_notification-2.0.0 )
	horde-horde_perms? ( >=dev-php/horde-horde_perms-2.0.0 )
	horde-horde_prefs? ( >=dev-php/horde-horde_prefs-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-horde_test-2.1.0 )"
