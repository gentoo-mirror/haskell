# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.4

CABAL_FEATURES=""
inherit haskell-cabal

MY_PN="Monadius"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="2-D arcade scroller"
HOMEPAGE="http://www.geocities.jp/takascience/haskell/monadius_en.html"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/glut-2.4:=
	>=dev-haskell/opengl-2.8:=
	>=dev-lang/ghc-7.6.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
"

PATCHES=("${FILESDIR}"/${P}-glut-2.5.patch)
S="${WORKDIR}/${MY_P}"

src_prepare() {
	default

	rm Setup.hs || die
}
