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
KEYWORDS="~amd64"
IUSE=" horde-Horde_ActiveSync horde-Horde_Crypt horde-Horde_Db horde-Horde_Editor horde-Horde_ElasticSearch horde-Horde_Form horde-Horde_Http horde-Horde_Icalendar horde-Horde_Image horde-Horde_Imap_Client horde-Horde_Kolab_Server horde-Horde_Kolab_Session horde-Horde_Kolab_Storage horde-Horde_Ldap horde-Horde_Mail horde-Horde_Nls horde-Horde_Oauth horde-Horde_Queue horde-Horde_Routes horde-Horde_Service_Twitter horde-Horde_SpellChecker horde-Horde_Test horde-Horde_Tree horde-Horde_Vfs PEAR-Net_DNS2 PEAR-Text_CAPTCHA PEAR-Text_Figlet PEAR-Text_LanguageDetect"

DEPEND="dev-lang/php[session]
    >=dev-lang/php-5.3.0
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
	horde-Horde_ActiveSync? ( >=dev-php/horde-Horde_ActiveSync-2.0.6 )
	horde-Horde_Crypt? ( >=dev-php/horde-Horde_Crypt-2.0.0 )
	horde-Horde_Db? ( >=dev-php/horde-Horde_Db-2.0.0 )
	horde-Horde_Editor? ( >=dev-php/horde-Horde_Editor-2.0.0 )
	horde-Horde_ElasticSearch? ( >=dev-php/horde-Horde_ElasticSearch-1.0.0 )
	horde-Horde_Form? ( >=dev-php/horde-Horde_Form-2.0.0 )
	horde-Horde_Http? ( >=dev-php/horde-Horde_Http-2.0.0 )
	horde-Horde_Icalendar? ( >=dev-php/horde-Horde_Icalendar-2.0.0 )
	horde-Horde_Image? ( >=dev-php/horde-Horde_Image-2.0.0 )
	horde-Horde_Imap_Client? ( >=dev-php/horde-Horde_Imap_Client-2.0.0 )
	horde-Horde_Kolab_Server? ( >=dev-php/horde-Horde_Kolab_Server-2.0.0 )
	horde-Horde_Kolab_Session? ( >=dev-php/horde-Horde_Kolab_Session-2.0.0 )
	horde-Horde_Kolab_Storage? ( >=dev-php/horde-Horde_Kolab_Storage-2.0.0 )
	horde-Horde_Ldap? ( >=dev-php/horde-Horde_Ldap-2.0.0 )
	horde-Horde_Mail? ( >=dev-php/horde-Horde_Mail-2.0.0 )
	horde-Horde_Nls? ( >=dev-php/horde-Horde_Nls-2.0.0 )
	horde-Horde_Oauth? ( >=dev-php/horde-Horde_Oauth-2.0.0 )
	horde-Horde_Queue? ( >=dev-php/horde-Horde_Queue-1.0.0 )
	horde-Horde_Routes? ( >=dev-php/horde-Horde_Routes-2.0.0 )
	horde-Horde_Service_Twitter? ( >=dev-php/horde-Horde_Service_Twitter-2.0.0 )
	horde-Horde_SpellChecker? ( >=dev-php/horde-Horde_SpellChecker-2.0.0 )
	horde-Horde_Test? ( >=dev-php/horde-Horde_Test-2.1.0 )
	horde-Horde_Tree? ( >=dev-php/horde-Horde_Tree-2.0.0 )
	horde-Horde_Vfs? ( >=dev-php/horde-Horde_Vfs-2.0.0 )
	PEAR-Net_DNS2? ( dev-php/PEAR-Net_DNS2 )
	PEAR-Text_CAPTCHA? ( dev-php/PEAR-Text_CAPTCHA )
	PEAR-Text_Figlet? ( dev-php/PEAR-Text_Figlet )
	PEAR-Text_LanguageDetect? ( dev-php/PEAR-Text_LanguageDetect )
	"
RDEPEND="${DEPEND}"
