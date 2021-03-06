# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit qmake-utils

DESCRIPTION="System notifications for Deepin Desktop Environment"
HOMEPAGE="https://github.com/linuxdeepin/deepin-notifications"
SRC_URI="https://github.com/linuxdeepin/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="x11-libs/gtk+:2
		 dev-qt/qtsvg:5
		 dev-qt/qtdeclarative:5
	     "
DEPEND="${RDEPEND}
		>=dde-base/deepin-tool-kit-0.2.2:=
	     "

src_prepare() {
		eqmake5	PREFIX=/usr
}

src_install() {
		emake INSTALL_ROOT=${D} install
}
