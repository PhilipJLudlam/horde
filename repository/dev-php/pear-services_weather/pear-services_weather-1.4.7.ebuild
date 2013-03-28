# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="1.4.7"
PHP_PEAR_PKG_NAME="Services_Weather"

inherit php-pear-r1

DESCRIPTION="This class acts as an interface to various online weather-services."
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Services_Weather-1.4.7.tgz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE="pear-net_ftp pear-cache pear-db pear-soap pear-xml_serializer"

DEPEND="dev-lang/php[ctype]
	>=dev-lang/php-4.0.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.0
	>=dev-php/pear-http_request-1.2.0
	pear-net_ftp? ( >=dev-php/pear-net_ftp-1.3.1 )
	pear-cache? ( >=dev-php/pear-cache-1.5.3 )
	pear-db? ( >=dev-php/pear-db-1.4.0 )
	pear-soap? ( >=dev-php/pear-soap-0.7.5 )
	pear-xml_serializer? ( >=dev-php/pear-xml_serializer-0.8 )"
