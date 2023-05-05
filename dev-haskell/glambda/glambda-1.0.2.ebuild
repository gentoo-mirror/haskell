# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A simply typed lambda calculus interpreter, written with GADTs"
HOMEPAGE="https://github.com/goldfirere/glambda"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/ansi-wl-pprint-0.6.7.1:=[profile?]
	>=dev-haskell/haskeline-0.7.1.1:=[profile?]
	>=dev-haskell/mtl-2.2.1:=[profile?]
	>=dev-haskell/parsec-3.1:=[profile?]
	>=dev-lang/ghc-7.10.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/tasty-0.8.1
		>=dev-haskell/tasty-hunit-0.9 )
"
