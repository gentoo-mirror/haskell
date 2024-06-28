# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Functions to desugar Template Haskell"
HOMEPAGE="https://github.com/goldfirere/th-desugar"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-haskell/ordered-containers-0.2.2:=[profile?]
	>=dev-haskell/syb-0.4:=[profile?]
	>=dev-haskell/th-abstraction-0.5:=[profile?] <dev-haskell/th-abstraction-0.7:=[profile?]
	>=dev-haskell/th-orphans-0.13.7:=[profile?]
	>=dev-haskell/transformers-compat-0.6.3:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? (
		>=dev-haskell/hspec-1.3
		>=dev-haskell/hunit-1.2
		>=dev-haskell/th-orphans-0.13.9
	)
"
