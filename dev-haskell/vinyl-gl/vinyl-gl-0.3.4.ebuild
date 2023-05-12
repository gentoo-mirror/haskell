# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Utilities for working with OpenGL's GLSL shading language and vinyl records"
HOMEPAGE="https://hackage.haskell.org/package/vinyl-gl"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/glutil-0.6.4:=[profile?]
	>=dev-haskell/linear-1.1.3:=[profile?]
	>=dev-haskell/opengl-2.8:=[profile?]
	>=dev-haskell/tagged-0.4:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?]
	>=dev-haskell/vinyl-0.9.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/hunit
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit )
"
