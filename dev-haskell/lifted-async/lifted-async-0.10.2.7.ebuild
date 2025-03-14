# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Run lifted IO operations asynchronously and wait for their results"
HOMEPAGE="https://github.com/maoe/lifted-async"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/async-2.2:=[profile?] <dev-haskell/async-2.3:=[profile?]
	>=dev-haskell/constraints-0.2:=[profile?] <dev-haskell/constraints-0.15:=[profile?]
	>=dev-haskell/lifted-base-0.2:=[profile?] <dev-haskell/lifted-base-0.3:=[profile?]
	>=dev-haskell/monad-control-1.0:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/transformers-base-0.4:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/hunit
		dev-haskell/tasty
		<dev-haskell/tasty-expected-failure-0.13
		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.11
		dev-haskell/tasty-th )
"
