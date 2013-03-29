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
KEYWORDS="~~amd64"
IUSE="horde-horde_vfs pear-net_sieve pear-net_socket"

DEPEND="dev-lang/php[nls]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=www-apps/horde-horde-5.0.0
	>=dev-php/horde-horde_auth-2.0.0
	>=dev-php/horde-horde_autoloader-2.0.0
	>=dev-php/horde-horde_core-2.0.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_group-2.0.0
	>=dev-php/horde-horde_form-2.0.0
	>=dev-php/horde-horde_imap_client-2.0.0
	>=dev-php/horde-horde_mime-2.0.0
	>=dev-php/horde-horde_perms-2.0.0
	>=dev-php/horde-horde_share-2.0.0
	>=dev-php/horde-horde_util-2.0.0
	horde-horde_vfs? ( >=dev-php/horde-horde_vfs-2.0.0 )
	pear-net_sieve? ( >=dev-php/pear-net_sieve-1.3.1 )
	pear-net_socket? ( dev-php/pear-net_socket )"
