# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="2.1.0"
PHP_PEAR_PKG_NAME="Horde_History"

inherit php-pear-lib-r1
S="${WORKDIR}/${PHP_PEAR_PKG_NAME}-${PEAR_PV}"

DESCRIPTION="API for tracking the history of an object"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_History-2.1.0.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE="horde-horde_hashtable horde-horde_test"

DEPEND=">=dev-lang/php-5.3.0
	dev-php/horde-Horde_Role"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0
	>=dev-php/horde-Horde_Db-2.0.0
	>=dev-php/horde-Horde_Exception-2.0.0
	horde-horde_hashtable? ( >=dev-php/horde-Horde_HashTable-1.0.0 )
	horde-horde_test? ( >=dev-php/horde-Horde_Test-2.1.0 )"
