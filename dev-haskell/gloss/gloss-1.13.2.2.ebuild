# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Painless 2D vector graphics, animations and simulations"
HOMEPAGE="http://gloss.ouroborus.net"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="glfw +glut"

CABAL_CHDEPS=(
	'GLFW-b >= 1.4.1.0 && < 2' 'GLFW-b >= 1.4.1.0'
	)

RDEPEND="
	>=dev-haskell/bmp-1.2:=[profile?] <dev-haskell/bmp-1.3:=[profile?]
	>=dev-haskell/gloss-rendering-1.13:=[profile?] <dev-haskell/gloss-rendering-1.14:=[profile?]
	>=dev-haskell/glut-2.7:=[profile?] <dev-haskell/glut-2.8:=[profile?]
	>=dev-haskell/opengl-2.12:=[profile?] <dev-haskell/opengl-3.1:=[profile?]
	>=dev-lang/ghc-9.2.4:=
	glfw? (
		>=dev-haskell/glfw-b-1.4.1.0:=[profile?]
	)
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.6.3.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag glfw glfw) \
		$(cabal_flag glut glut)
}
