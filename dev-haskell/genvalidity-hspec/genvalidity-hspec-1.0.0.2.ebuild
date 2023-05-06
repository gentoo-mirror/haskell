# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Standard spec's for GenValidity instances"
HOMEPAGE="https://github.com/NorfairKing/validity#readme"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/genvalidity-1.0:=[profile?]
	>=dev-haskell/genvalidity-property-0.5:=[profile?]
	dev-haskell/hspec:=[profile?]
	>=dev-haskell/hspec-core-2.5.0:=[profile?]
	dev-haskell/quickcheck:2=[profile?]
	>=dev-haskell/validity-0.5:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
