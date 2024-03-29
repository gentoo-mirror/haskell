# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Time zone database (as files and as a module)"
HOMEPAGE="https://github.com/ysangkok/haskell-tzdata"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/vector-0.9:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-8.10.6:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.1.0
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.7
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/tasty-th )
"
