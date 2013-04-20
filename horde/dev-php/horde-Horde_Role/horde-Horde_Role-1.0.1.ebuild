# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.0.1"
PHP_PEAR_PKG_NAME="Horde_Role"

inherit php-pear-lib-r1
S="${WORKDIR}/${PHP_PEAR_PKG_NAME}-${PEAR_PV}"

DESCRIPTION="PEAR installer role used to install Horde components"
HOMEPAGE="pear.horde.org"
SRC_URI="http://pear.horde.org/get/Horde_Role-1.0.1.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE=""

DEPEND=">=dev-lang/php-5.3.0"
RDEPEND="${DEPEND}
	>=dev-php/PEAR-PEAR-1.7.0"
# Functions needed to add/remove the Horde PEAR channel
pkg_setup()
{
  pear channel-discover "pear.horde.org"
}

pkg_postrm()
{
  pear channel-delete "pear.horde.org"
}
