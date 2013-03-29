# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="4.0.3"
PHP_PEAR_PKG_NAME="turba"

inherit php-pear-r1

DESCRIPTION="A web based address book"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/turba-4.0.3.tgz"

LICENSE="ASL"
SLOT="0"
KEYWORDS="~~amd64"
IUSE="horde-horde_activesync horde-horde_db horde-horde_imsp horde-horde_ldap horde-horde_service_facebook"

DEPEND="dev-lang/php[nls,hash,json]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=www-apps/horde-horde-5.0.0
	>=dev-php/horde-horde_auth-2.0.0
	>=dev-php/horde-horde_core-2.0.0
	>=dev-php/horde-horde_data-2.0.0
	>=dev-php/horde-horde_date-2.0.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_form-2.0.0
	>=dev-php/horde-horde_group-2.0.0
	>=dev-php/horde-horde_history-2.0.0
	>=dev-php/horde-horde_icalendar-2.0.0
	>=dev-php/horde-horde_mail-2.0.0
	>=dev-php/horde-horde_mime-2.0.0
	>=dev-php/horde-horde_nls-2.0.0
	>=dev-php/horde-horde_perms-2.0.0
	>=dev-php/horde-horde_prefs-2.0.0
	>=dev-php/horde-horde_serialize-2.0.0
	>=dev-php/horde-horde_share-2.0.0
	>=dev-php/horde-horde_support-2.0.0
	>=dev-php/horde-horde_url-2.0.0
	>=dev-php/horde-horde_util-2.0.0
	>=dev-php/horde-horde_view-2.0.0
	horde-horde_activesync? ( >=dev-php/horde-horde_activesync-2.0.0 )
	horde-horde_db? ( >=dev-php/horde-horde_db-2.0.0 )
	horde-horde_imsp? ( >=dev-php/horde-horde_imsp-2.0.0 )
	horde-horde_ldap? ( >=dev-php/horde-horde_ldap-2.0.0 )
	horde-horde_service_facebook? ( >=dev-php/horde-horde_service_facebook-2.0.0 )"
