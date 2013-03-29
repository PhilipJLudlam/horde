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
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Alarm-2.0.0
	>=dev-php/horde-Horde_Auth-2.0.0
	>=dev-php/horde-Horde_Autoloader-2.0.0
	>=dev-php/horde-Horde_Browser-2.0.0
	>=dev-php/horde-Horde_Cache-2.0.0
	>=dev-php/horde-Horde_Cli-2.0.0
	>=dev-php/horde-Horde_Compress-2.0.0
	>=dev-php/horde-Horde_Compress_Fast-1.0.0
	>=dev-php/horde-Horde_Controller-2.0.0
	>=dev-php/horde-Horde_Data-2.0.0
	>=dev-php/horde-Horde_Date-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Group-2.0.0
	>=dev-php/horde-Horde_History-2.0.0
	>=dev-php/horde-Horde_Injector-2.0.0
	>=dev-php/horde-Horde_Lock-2.0.0
	>=dev-php/horde-Horde_Log-2.0.0
	>=dev-php/horde-Horde_LoginTasks-2.0.0
	>=dev-php/horde-Horde_Mime-2.0.0
	>=dev-php/horde-Horde_Mime_Viewer-2.0.0
	>=dev-php/horde-Horde_Notification-2.0.0
	>=dev-php/horde-Horde_Perms-2.0.0
	>=dev-php/horde-Horde_Prefs-2.0.0
	>=dev-php/horde-Horde_Secret-2.0.0
	>=dev-php/horde-Horde_Serialize-2.0.0
	>=dev-php/horde-Horde_SessionHandler-2.0.0
	>=dev-php/horde-Horde_Share-2.0.0
	>=dev-php/horde-Horde_Support-2.0.0
	>=dev-php/horde-Horde_Template-2.0.0
	>=dev-php/horde-Horde_Token-2.0.0
	>=dev-php/horde-Horde_Text_Filter-2.0.0
	>=dev-php/horde-Horde_Text_Filter_Csstidy-2.0.0
	>=dev-php/horde-Horde_Translation-2.0.0
	>=dev-php/horde-Horde_Url-2.1.0
	>=dev-php/horde-Horde_Util-2.0.0
	>=dev-php/horde-Horde_View-2.0.0
	horde-horde_activesync? ( >=dev-php/horde-Horde_ActiveSync-2.0.6 )
	horde-horde_crypt? ( >=dev-php/horde-Horde_Crypt-2.0.0 )
	horde-horde_db? ( >=dev-php/horde-Horde_Db-2.0.0 )
	horde-horde_editor? ( >=dev-php/horde-Horde_Editor-2.0.0 )
	horde-horde_elasticsearch? ( >=dev-php/horde-Horde_ElasticSearch-1.0.0 )
	horde-horde_form? ( >=dev-php/horde-Horde_Form-2.0.0 )
	horde-horde_http? ( >=dev-php/horde-Horde_Http-2.0.0 )
	horde-horde_icalendar? ( >=dev-php/horde-Horde_Icalendar-2.0.0 )
	horde-horde_image? ( >=dev-php/horde-Horde_Image-2.0.0 )
	horde-horde_imap_client? ( >=dev-php/horde-Horde_Imap_Client-2.0.0 )
	horde-horde_kolab_server? ( >=dev-php/horde-Horde_Kolab_Server-2.0.0 )
	horde-horde_kolab_session? ( >=dev-php/horde-Horde_Kolab_Session-2.0.0 )
	horde-horde_kolab_storage? ( >=dev-php/horde-Horde_Kolab_Storage-2.0.0 )
	horde-horde_ldap? ( >=dev-php/horde-Horde_Ldap-2.0.0 )
	horde-horde_mail? ( >=dev-php/horde-Horde_Mail-2.0.0 )
	horde-horde_nls? ( >=dev-php/horde-Horde_Nls-2.0.0 )
	horde-horde_oauth? ( >=dev-php/horde-Horde_Oauth-2.0.0 )
	horde-horde_queue? ( >=dev-php/horde-Horde_Queue-1.0.0 )
	horde-horde_routes? ( >=dev-php/horde-Horde_Routes-2.0.0 )
	horde-horde_service_twitter? ( >=dev-php/horde-Horde_Service_Twitter-2.0.0 )
	horde-horde_spellchecker? ( >=dev-php/horde-Horde_SpellChecker-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-Horde_Test-2.1.0 )
	horde-horde_tree? ( >=dev-php/horde-Horde_Tree-2.0.0 )
	horde-horde_vfs? ( >=dev-php/horde-Horde_Vfs-2.0.0 )
	pear-net_dns2? ( dev-php/PEAR-Net_DNS2 )
	pear-text_captcha? ( dev-php/PEAR-Text_CAPTCHA )
	pear-text_figlet? ( dev-php/PEAR-Text_Figlet )
	pear-text_languagedetect? ( dev-php/PEAR-Text_LanguageDetect )"
