# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="A simple FUSE file system, which stores extended attributes in SQLite"
HOMEPAGE="https://github.com/sandrain/fuse-xattrfs"
SRC_URI="https://github.com/sandrain/fuse-xattrfs/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="sys-fs/fuse dev-db/sqlite"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

src_prepare() {
	einfo "Generating autotools files"
	./autogen.sh
}

#src_install() {
#	emake DESTDIR="${D}" install
#}

