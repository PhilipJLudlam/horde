# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.0alpha3"
PHP_PEAR_PKG_NAME="Horde_Kolab_Cli"

inherit php-pear-r1

DESCRIPTION="A command line interface to the Kolab storage system"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Kolab_Cli-1.0.0alpha3.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~~amd64"
IUSE="horde-horde_support horde-horde_util horde-horde_yaml"

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Autoloader-1.0.0
	>=dev-php/horde-Horde_Cli-1.0.0
	>=dev-php/horde-Horde_Cli_Modular-1.0.0
	>=dev-php/horde-Horde_Imap_Client-1.0.0
	>=dev-php/horde-Horde_Kolab_Storage-1.1.0
	>=dev-php/horde-Horde_Log-1.0.0
	horde-horde_support? ( >=dev-php/horde-Horde_Support-1.0.0 )
	horde-horde_util? ( >=dev-php/horde-Horde_Util-1.0.0 )
	horde-horde_yaml? ( >=dev-php/horde-Horde_Yaml-1.0.0 )"
