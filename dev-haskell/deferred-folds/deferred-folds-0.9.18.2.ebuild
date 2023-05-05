# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Abstractions over deferred folds"
HOMEPAGE="https://github.com/metrix-ai/deferred-folds"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/foldl-1:=[profile?] <dev-haskell/foldl-2:=[profile?]
	>=dev-haskell/hashable-1:=[profile?] <dev-haskell/hashable-2:=[profile?]
	>=dev-haskell/primitive-0.6.4:=[profile?] <dev-haskell/primitive-0.8:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.12:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0
	test? ( >=dev-haskell/quickcheck-2.8.1 <dev-haskell/quickcheck-3
		>=dev-haskell/quickcheck-instances-0.3.11 <dev-haskell/quickcheck-instances-0.4
		<dev-haskell/rerebase-2
		>=dev-haskell/tasty-0.12 <dev-haskell/tasty-2
		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/tasty-quickcheck-0.9 <dev-haskell/tasty-quickcheck-0.11 )
"
