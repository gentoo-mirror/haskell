# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.2

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Gloss picture data types and rendering functions"
HOMEPAGE="https://hackage.haskell.org/package/gloss-rendering"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/bmp-1.2:=[profile?] <dev-haskell/bmp-1.3:=[profile?]
	>=dev-haskell/glut-2.7:=[profile?] <dev-haskell/glut-2.8:=[profile?]
	>=dev-haskell/opengl-2.12:=[profile?] <dev-haskell/opengl-3.1:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_prepare() {
	default

	cabal_chdeps \
		'base                          >= 4.8 && < 4.13'	'base >=4.8' \
		'containers                    >= 0.5 && < 0.7'		'containers >=0.5'
}
