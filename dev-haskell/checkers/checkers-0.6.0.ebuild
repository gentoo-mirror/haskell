# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Check properties on standard classes and data structures"
HOMEPAGE="https://github.com/haskell-checkers/checkers"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/quickcheck-2.3:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-haskell/semigroupoids-5:=[profile?] <dev-haskell/semigroupoids-6.1:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"
