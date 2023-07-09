# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit xdg

DESCRIPTION="An opensource cursor theme inspired by Google"
HOMEPAGE="https://github.com/ful1e5/Google_Cursor"
MY_PN="GoogleDot"
SRC_URI="
	black?	( https://github.com/ful1e5/Google_Cursor/releases/download/v${PV}/${MY_PN}-Black.tar.gz )
	blue?	( https://github.com/ful1e5/Google_Cursor/releases/download/v${PV}/${MY_PN}-Blue.tar.gz )
	red?	( https://github.com/ful1e5/Google_Cursor/releases/download/v${PV}/${MY_PN}-Red.tar.gz )
	white?	( https://github.com/ful1e5/Google_Cursor/releases/download/v${PV}/${MY_PN}-White.tar.gz )
"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="+black blue red +white"
REQUIRED_USE="|| ( black blue red white )"

S="${WORKDIR}"

src_install() {
	dodir /usr/share/icons/

	insinto /usr/share/icons/
	doins -r *
}
