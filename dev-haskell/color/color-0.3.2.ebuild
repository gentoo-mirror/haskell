# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="Color"
MY_P="${MY_PN}-${PV}"
S="${WORKDIR}/${MY_P}"

DESCRIPTION="Color spaces and conversions between them"
HOMEPAGE="https://github.com/lehins/Color"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="dev-haskell/data-default-class:=[profile?]
	>=dev-haskell/vector-0.11:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/colour
		>=dev-haskell/doctest-0.16
		dev-haskell/hspec
		dev-haskell/hunit
		dev-haskell/juicypixels
		dev-haskell/massiv
		dev-haskell/massiv-test
		>dev-haskell/quickcheck-2.13
		dev-haskell/random )
"
