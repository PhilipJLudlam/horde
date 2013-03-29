# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

PEAR_PV="0.4.6"
PHP_PEAR_PKG_NAME="Text_CAPTCHA"

inherit php-pear-r1

DESCRIPTION="Generation of CAPTCHAs"
HOMEPAGE="pear.php.net"
SRC_URI="http://pear.php.net/get/Text_CAPTCHA-0.4.6.tgz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~~amd64"
IUSE="pear-numbers_words pear-text_figlet pear-image_text"

DEPEND=">=dev-lang/php-4.0.0"
RDEPEND="${DEPEND}
	>=dev-php/pear-pear-1.4.0_beta1
	dev-php/pear-text_password
	pear-numbers_words? ( dev-php/pear-numbers_words )
	pear-text_figlet? ( dev-php/pear-text_figlet )
	pear-image_text? ( dev-php/pear-image_text )"
