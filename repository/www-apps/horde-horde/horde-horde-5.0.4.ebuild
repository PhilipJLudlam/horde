# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="5.0.4"
PHP_PEAR_PKG_NAME="horde"

inherit php-pear-r1

DESCRIPTION="Horde Application Framework"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/horde-5.0.4.tgz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~~amd64"
IUSE="pear-net_dns2 pear-services_weather horde-horde_activesync horde-horde_db horde-horde_feed horde-horde_oauth horde-horde_service_facebook horde-horde_service_twitter horde-horde_service_weather horde-horde_syncml pear-console_getopt pear-console_table pear-file_find pear-file_fstab"

DEPEND="dev-lang/php[filter,nls,hash]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_alarm-2.0.0
	>=dev-php/horde-horde_argv-2.0.0
	>=dev-php/horde-horde_auth-2.0.0
	>=dev-php/horde-horde_autoloader-2.0.0
	>=dev-php/horde-horde_browser-2.0.0
	>=dev-php/horde-horde_core-2.0.0
	>=dev-php/horde-horde_date-2.0.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_form-2.0.0
	>=dev-php/horde-horde_group-2.0.0
	>=dev-php/horde-horde_http-2.0.0
	>=dev-php/horde-horde_image-2.0.0
	>=dev-php/horde-horde_logintasks-2.0.0
	>=dev-php/horde-horde_mail-2.0.0
	>=dev-php/horde-horde_mime-2.0.0
	>=dev-php/horde-horde_nls-2.0.0
	>=dev-php/horde-horde_perms-2.0.0
	>=dev-php/horde-horde_prefs-2.0.0
	>=dev-php/horde-horde_rpc-2.0.0
	>=dev-php/horde-horde_serialize-2.0.0
	>=dev-php/horde-horde_support-2.0.0
	>=dev-php/horde-horde_template-2.0.0
	>=dev-php/horde-horde_text_diff-2.0.0
	>=dev-php/horde-horde_token-2.0.0
	>=dev-php/horde-horde_text_filter-2.0.0
	>=dev-php/horde-horde_tree-2.0.0
	>=dev-php/horde-horde_url-2.0.0
	>=dev-php/horde-horde_util-2.0.0
	>=dev-php/horde-horde_view-2.0.0
	>=dev-php/horde-horde_vfs-2.0.0
	pear-net_dns2? ( dev-php/pear-net_dns2 )
	pear-services_weather? ( dev-php/pear-services_weather )
	horde-horde_activesync? ( >=dev-php/horde-horde_activesync-2.0.0 )
	horde-horde_db? ( >=dev-php/horde-horde_db-2.0.0 )
	horde-horde_feed? ( >=dev-php/horde-horde_feed-2.0.0 )
	horde-horde_oauth? ( >=dev-php/horde-horde_oauth-2.0.0 )
	horde-horde_service_facebook? ( >=dev-php/horde-horde_service_facebook-2.0.0 )
	horde-horde_service_twitter? ( >=dev-php/horde-horde_service_twitter-2.0.0 )
	horde-horde_service_weather? ( >=dev-php/horde-horde_service_weather-2.0.0 )
	horde-horde_syncml? ( >=dev-php/horde-horde_syncml-2.0.0 )
	pear-console_getopt? ( dev-php/pear-console_getopt )
	pear-console_table? ( dev-php/pear-console_table )
	pear-file_find? ( dev-php/pear-file_find )
	pear-file_fstab? ( dev-php/pear-file_fstab )"
