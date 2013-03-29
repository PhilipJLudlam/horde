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
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Alarm-2.0.0
	>=dev-php/horde-Horde_Argv-2.0.0
	>=dev-php/horde-Horde_Auth-2.0.0
	>=dev-php/horde-Horde_Autoloader-2.0.0
	>=dev-php/horde-Horde_Browser-2.0.0
	>=dev-php/horde-Horde_Core-2.0.0
	>=dev-php/horde-Horde_Date-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Form-2.0.0
	>=dev-php/horde-Horde_Group-2.0.0
	>=dev-php/horde-Horde_Http-2.0.0
	>=dev-php/horde-Horde_Image-2.0.0
	>=dev-php/horde-Horde_LoginTasks-2.0.0
	>=dev-php/horde-Horde_Mail-2.0.0
	>=dev-php/horde-Horde_Mime-2.0.0
	>=dev-php/horde-Horde_Nls-2.0.0
	>=dev-php/horde-Horde_Perms-2.0.0
	>=dev-php/horde-Horde_Prefs-2.0.0
	>=dev-php/horde-Horde_Rpc-2.0.0
	>=dev-php/horde-Horde_Serialize-2.0.0
	>=dev-php/horde-Horde_Support-2.0.0
	>=dev-php/horde-Horde_Template-2.0.0
	>=dev-php/horde-Horde_Text_Diff-2.0.0
	>=dev-php/horde-Horde_Token-2.0.0
	>=dev-php/horde-Horde_Text_Filter-2.0.0
	>=dev-php/horde-Horde_Tree-2.0.0
	>=dev-php/horde-Horde_Url-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	>=dev-php/horde-Horde_View-2.0.0
	>=dev-php/horde-Horde_Vfs-2.0.0
	pear-net_dns2? ( dev-php/PEAR-Net_DNS2 )
	pear-services_weather? ( dev-php/PEAR-Services_Weather )
	horde-horde_activesync? ( >=dev-php/horde-Horde_ActiveSync-2.0.0 )
	horde-horde_db? ( >=dev-php/horde-Horde_Db-2.0.0 )
	horde-horde_feed? ( >=dev-php/horde-Horde_Feed-2.0.0 )
	horde-horde_oauth? ( >=dev-php/horde-Horde_Oauth-2.0.0 )
	horde-horde_service_facebook? ( >=dev-php/horde-Horde_Service_Facebook-2.0.0 )
	horde-horde_service_twitter? ( >=dev-php/horde-Horde_Service_Twitter-2.0.0 )
	horde-horde_service_weather? ( >=dev-php/horde-Horde_Service_Weather-2.0.0 )
	horde-horde_syncml? ( >=dev-php/horde-Horde_SyncMl-2.0.0 )
	pear-console_getopt? ( dev-php/PEAR-Console_Getopt )
	pear-console_table? ( dev-php/PEAR-Console_Table )
	pear-file_find? ( dev-php/PEAR-File_Find )
	pear-file_fstab? ( dev-php/PEAR-File_Fstab )"
