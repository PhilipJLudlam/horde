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
IUSE="horde-horde_db horde-horde_history horde-horde_lock horde-horde_imap_client horde-horde_kolab_session horde-horde_ldap horde-horde_imsp horde-horde_http horde-horde_test pecl-pam pecl-sasl"

DEPEND="dev-lang/php[hash]
	>=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Exception-2.0.0
	>=dev-php/horde-Horde_Util-2.0.0
	horde-horde_db? ( >=dev-php/horde-Horde_Db-2.0.0 )
	horde-horde_history? ( >=dev-php/horde-Horde_History-2.0.0 )
	horde-horde_lock? ( >=dev-php/horde-Horde_Lock-2.0.0 )
	horde-horde_imap_client? ( >=dev-php/horde-Horde_Imap_Client-2.0.0 )
	horde-horde_kolab_session? ( >=dev-php/horde-Horde_Kolab_Session-2.0.0 )
	horde-horde_ldap? ( >=dev-php/horde-Horde_Ldap-2.0.0 )
	horde-horde_imsp? ( >=dev-php/horde-Horde_Imsp-2.0.0 )
	horde-horde_http? ( >=dev-php/horde-Horde_Http-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-Horde_Test-2.1.0 )
	pecl-pam? ( dev-php/pecl-pam )
	pecl-sasl? ( dev-php/pecl-sasl )"
