# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="3.0.3"
PHP_PEAR_PKG_NAME="ingo"

inherit php-pear-r1

DESCRIPTION="An email filter rules manager"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/ingo-3.0.3.tgz"

LICENSE="ASL"
SLOT="0"
KEYWORDS="~amd64"
IUSE=" horde-Horde_Vfs PEAR-Net_Sieve PEAR-Net_Socket"

DEPEND="dev-lang/php[nls]
    >=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.7.0
	>=www-apps/horde-horde-5.0.0
	>=dev-php/horde-Horde_Auth-2.0.0
	>=dev-php/horde-Horde_Autoloader-2.0.0
	>=dev-php/horde-Horde_Core-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Group-2.0.0
	>=dev-php/horde-Horde_Form-2.0.0
	>=dev-php/horde-Horde_Imap_Client-2.0.0
	>=dev-php/horde-Horde_Mime-2.0.0
	>=dev-php/horde-Horde_Perms-2.0.0
	>=dev-php/horde-Horde_Share-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-Horde_Vfs? ( >=dev-php/horde-Horde_Vfs-2.0.0 )
	PEAR-Net_Sieve? ( >=dev-php/PEAR-Net_Sieve-1.3.1 )
	PEAR-Net_Socket? ( dev-php/PEAR-Net_Socket )
	"
RDEPEND="${DEPEND}"
