# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python2_7 python3_{3,4} )

inherit distutils-r1

DESCRIPTION="Unofficial Telegram Bot API Client"
HOMEPAGE="https://github.com/datamachine/twx.botapi https://pypi.python.org/pypi/twx.botapi"
SRC_URI="https://github.com/datamachine/twx.botapi/archive/${PV}.tar.gz -> ${P}.tar.gz"

# Is this a correct way?
S="${WORKDIR}/twx.botapi-${PV}"

LICENSE="MIT License"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND=""
