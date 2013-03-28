# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.2"
PHP_PEAR_PKG_NAME="ansel"

inherit php-pear-r1

DESCRIPTION="Photo management application"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/ansel-2.0.2.tgz"

LICENSE="GPL-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE="horde-horde_service_urlshortener horde-horde_service_twitter horde-horde_service_facebook"

DEPEND="dev-lang/php[nls,hash]
	>=dev-lang/php-5.2.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=www-apps/horde-content-1.0.0
	>=www-apps/horde-horde-4.0.10
	>=dev-php/horde-horde_auth-1.0.4
	>=dev-php/horde-horde_autoloader-1.0.0
	>=dev-php/horde-horde_core-1.5.1
	>=dev-php/horde-horde_date-1.0.0
	>=dev-php/horde-horde_db-1.0.0
	>=dev-php/horde-horde_exception-1.0.0
	>=dev-php/horde-horde_form-1.0.0
	>=dev-php/horde-horde_group-1.0.0
	>=dev-php/horde-horde_image-1.0.4
	>=dev-php/horde-horde_mime-1.0.0
	>=dev-php/horde-horde_nls-1.0.0
	>=dev-php/horde-horde_perms-1.0.0
	>=dev-php/horde-horde_prefs-1.0.0
	>=dev-php/horde-horde_serialize-1.0.0
	>=dev-php/horde-horde_share-1.0.0
	>=dev-php/horde-horde_support-1.0.0
	>=dev-php/horde-horde_text_filter-1.0.0
	>=dev-php/horde-horde_url-1.0.0
	>=dev-php/horde-horde_util-1.0.0
	>=dev-php/horde-horde_view-1.0.0
	>=dev-php/horde-horde_vfs-1.0.0
	horde-horde_service_urlshortener? ( >=dev-php/horde-horde_service_urlshortener-1.0.0 )
	horde-horde_service_twitter? ( >=dev-php/horde-horde_service_twitter-1.0.0 )
	horde-horde_service_facebook? ( >=dev-php/horde-horde_service_facebook-1.0.0 )"
