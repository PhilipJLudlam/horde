# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.0.4"
PHP_PEAR_PKG_NAME="Horde_Auth"

inherit php-pear-r1

DESCRIPTION="Horde Authentication API"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Auth-2.0.4.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE=" horde-Horde_Db horde-Horde_History horde-Horde_Lock horde-Horde_Imap_Client horde-Horde_Kolab_Session horde-Horde_Ldap horde-Horde_Imsp horde-Horde_Http horde-Horde_Test pecl-pam pecl-sasl"

DEPEND="dev-lang/php[hash]
    >=dev-lang/php-5.3.0
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-Horde_Db? ( >=dev-php/horde-Horde_Db-2.0.0 )
	horde-Horde_History? ( >=dev-php/horde-Horde_History-2.0.0 )
	horde-Horde_Lock? ( >=dev-php/horde-Horde_Lock-2.0.0 )
	horde-Horde_Imap_Client? ( >=dev-php/horde-Horde_Imap_Client-2.0.0 )
	horde-Horde_Kolab_Session? ( >=dev-php/horde-Horde_Kolab_Session-2.0.0 )
	horde-Horde_Ldap? ( >=dev-php/horde-Horde_Ldap-2.0.0 )
	horde-Horde_Imsp? ( >=dev-php/horde-Horde_Imsp-2.0.0 )
	horde-Horde_Http? ( >=dev-php/horde-Horde_Http-2.0.0 )
	horde-Horde_Test? ( >=dev-php/horde-Horde_Test-2.1.0 )
	pecl-pam? ( dev-php/pecl-pam )
	pecl-sasl? ( dev-php/pecl-sasl )
	"
RDEPEND="${DEPEND}"
