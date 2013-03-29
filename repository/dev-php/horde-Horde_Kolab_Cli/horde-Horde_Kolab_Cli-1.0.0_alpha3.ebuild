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
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_autoloader-1.0.0
	>=dev-php/horde-horde_cli-1.0.0
	>=dev-php/horde-horde_cli_modular-1.0.0
	>=dev-php/horde-horde_imap_client-1.0.0
	>=dev-php/horde-horde_kolab_storage-1.1.0
	>=dev-php/horde-horde_log-1.0.0
	horde-horde_support? ( >=dev-php/horde-horde_support-1.0.0 )
	horde-horde_util? ( >=dev-php/horde-horde_util-1.0.0 )
	horde-horde_yaml? ( >=dev-php/horde-horde_yaml-1.0.0 )"
