# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.4.3"
PHP_PEAR_PKG_NAME="Horde_Core"

inherit php-pear-r1

DESCRIPTION="Horde Core Framework libraries"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Core-2.4.3.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~~amd64"
IUSE="horde-horde_activesync horde-horde_crypt horde-horde_db horde-horde_editor horde-horde_elasticsearch horde-horde_form horde-horde_http horde-horde_icalendar horde-horde_image horde-horde_imap_client horde-horde_kolab_server horde-horde_kolab_session horde-horde_kolab_storage horde-horde_ldap horde-horde_mail horde-horde_nls horde-horde_oauth horde-horde_queue horde-horde_routes horde-horde_service_twitter horde-horde_spellchecker horde-horde_test horde-horde_tree horde-horde_vfs pear-net_dns2 pear-text_captcha pear-text_figlet pear-text_languagedetect"

DEPEND="dev-lang/php[session]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_alarm-2.0.0
	>=dev-php/horde-horde_auth-2.0.0
	>=dev-php/horde-horde_autoloader-2.0.0
	>=dev-php/horde-horde_browser-2.0.0
	>=dev-php/horde-horde_cache-2.0.0
	>=dev-php/horde-horde_cli-2.0.0
	>=dev-php/horde-horde_compress-2.0.0
	>=dev-php/horde-horde_compress_fast-1.0.0
	>=dev-php/horde-horde_controller-2.0.0
	>=dev-php/horde-horde_data-2.0.0
	>=dev-php/horde-horde_date-2.0.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_group-2.0.0
	>=dev-php/horde-horde_history-2.0.0
	>=dev-php/horde-horde_injector-2.0.0
	>=dev-php/horde-horde_lock-2.0.0
	>=dev-php/horde-horde_log-2.0.0
	>=dev-php/horde-horde_logintasks-2.0.0
	>=dev-php/horde-horde_mime-2.0.0
	>=dev-php/horde-horde_mime_viewer-2.0.0
	>=dev-php/horde-horde_notification-2.0.0
	>=dev-php/horde-horde_perms-2.0.0
	>=dev-php/horde-horde_prefs-2.0.0
	>=dev-php/horde-horde_secret-2.0.0
	>=dev-php/horde-horde_serialize-2.0.0
	>=dev-php/horde-horde_sessionhandler-2.0.0
	>=dev-php/horde-horde_share-2.0.0
	>=dev-php/horde-horde_support-2.0.0
	>=dev-php/horde-horde_template-2.0.0
	>=dev-php/horde-horde_token-2.0.0
	>=dev-php/horde-horde_text_filter-2.0.0
	>=dev-php/horde-horde_text_filter_csstidy-2.0.0
	>=dev-php/horde-horde_translation-2.0.0
	>=dev-php/horde-horde_url-2.1.0
	>=dev-php/horde-horde_util-2.0.0
	>=dev-php/horde-horde_view-2.0.0
	horde-horde_activesync? ( >=dev-php/horde-horde_activesync-2.0.6 )
	horde-horde_crypt? ( >=dev-php/horde-horde_crypt-2.0.0 )
	horde-horde_db? ( >=dev-php/horde-horde_db-2.0.0 )
	horde-horde_editor? ( >=dev-php/horde-horde_editor-2.0.0 )
	horde-horde_elasticsearch? ( >=dev-php/horde-horde_elasticsearch-1.0.0 )
	horde-horde_form? ( >=dev-php/horde-horde_form-2.0.0 )
	horde-horde_http? ( >=dev-php/horde-horde_http-2.0.0 )
	horde-horde_icalendar? ( >=dev-php/horde-horde_icalendar-2.0.0 )
	horde-horde_image? ( >=dev-php/horde-horde_image-2.0.0 )
	horde-horde_imap_client? ( >=dev-php/horde-horde_imap_client-2.0.0 )
	horde-horde_kolab_server? ( >=dev-php/horde-horde_kolab_server-2.0.0 )
	horde-horde_kolab_session? ( >=dev-php/horde-horde_kolab_session-2.0.0 )
	horde-horde_kolab_storage? ( >=dev-php/horde-horde_kolab_storage-2.0.0 )
	horde-horde_ldap? ( >=dev-php/horde-horde_ldap-2.0.0 )
	horde-horde_mail? ( >=dev-php/horde-horde_mail-2.0.0 )
	horde-horde_nls? ( >=dev-php/horde-horde_nls-2.0.0 )
	horde-horde_oauth? ( >=dev-php/horde-horde_oauth-2.0.0 )
	horde-horde_queue? ( >=dev-php/horde-horde_queue-1.0.0 )
	horde-horde_routes? ( >=dev-php/horde-horde_routes-2.0.0 )
	horde-horde_service_twitter? ( >=dev-php/horde-horde_service_twitter-2.0.0 )
	horde-horde_spellchecker? ( >=dev-php/horde-horde_spellchecker-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-horde_test-2.1.0 )
	horde-horde_tree? ( >=dev-php/horde-horde_tree-2.0.0 )
	horde-horde_vfs? ( >=dev-php/horde-horde_vfs-2.0.0 )
	pear-net_dns2? ( dev-php/pear-net_dns2 )
	pear-text_captcha? ( dev-php/pear-text_captcha )
	pear-text_figlet? ( dev-php/pear-text_figlet )
	pear-text_languagedetect? ( dev-php/pear-text_languagedetect )"
