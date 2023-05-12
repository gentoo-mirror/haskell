# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Optics as an abstract interface"
HOMEPAGE="https://hackage.haskell.org/package/optics"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'inspection-testing     >= 0.4.1.1    && <0.5' 'inspection-testing >= 0.4.1.1'
)

RDEPEND=">=dev-haskell/optics-core-0.4.1:=[profile?] <dev-haskell/optics-core-0.4.2:=[profile?]
	>=dev-haskell/optics-extra-0.4.2:=[profile?] <dev-haskell/optics-extra-0.4.3:=[profile?]
	>=dev-haskell/optics-th-0.4.1:=[profile?] <dev-haskell/optics-th-0.4.2:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/indexed-profunctors-0.1 <dev-haskell/indexed-profunctors-0.2
		>=dev-haskell/inspection-testing-0.4.1.1
		dev-haskell/quickcheck
		dev-haskell/random
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/tasty-quickcheck )
"
