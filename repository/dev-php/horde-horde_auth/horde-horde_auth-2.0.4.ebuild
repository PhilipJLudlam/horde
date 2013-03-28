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
	>=dev-lang/php-5.3.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.7.0
	>=dev-php/horde-horde_exception-2.0.0
	>=dev-php/horde-horde_util-2.0.0
	horde-horde_db? ( >=dev-php/horde-horde_db-2.0.0 )
	horde-horde_history? ( >=dev-php/horde-horde_history-2.0.0 )
	horde-horde_lock? ( >=dev-php/horde-horde_lock-2.0.0 )
	horde-horde_imap_client? ( >=dev-php/horde-horde_imap_client-2.0.0 )
	horde-horde_kolab_session? ( >=dev-php/horde-horde_kolab_session-2.0.0 )
	horde-horde_ldap? ( >=dev-php/horde-horde_ldap-2.0.0 )
	horde-horde_imsp? ( >=dev-php/horde-horde_imsp-2.0.0 )
	horde-horde_http? ( >=dev-php/horde-horde_http-2.0.0 )
	horde-horde_test? ( >=dev-php/horde-horde_test-2.1.0 )
	pecl-pam? ( dev-php/pecl-pam )
	pecl-sasl? ( dev-php/pecl-sasl )"
