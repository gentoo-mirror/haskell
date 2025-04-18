# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="STM-specialised Hash Array Mapped Trie"
HOMEPAGE="https://github.com/nikita-volkov/stm-hamt"

CABAL_CHDEPS=(
	'primitive >=0.7 && <0.10' 'primitive >=0.7'
	'primitive-extras >=0.10.2 && <0.11' 'primitive-extras >=0.10.2'
	)

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/deferred-folds-0.9:=[profile?] <dev-haskell/deferred-folds-0.10:=[profile?]
	>=dev-haskell/focus-1:=[profile?] <dev-haskell/focus-1.1:=[profile?]
	>=dev-haskell/hashable-1.4.0.0:=[profile?] <dev-haskell/hashable-2:=[profile?]
	>=dev-haskell/list-t-1.0.1:=[profile?] <dev-haskell/list-t-1.1:=[profile?]
	>=dev-haskell/primitive-0.7:=[profile?]
	>=dev-haskell/primitive-extras-0.10.2:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/quickcheck-2.8.1 <dev-haskell/quickcheck-3
		>=dev-haskell/quickcheck-instances-0.3.11 <dev-haskell/quickcheck-instances-0.4
		<dev-haskell/rerebase-2
		>=dev-haskell/tasty-0.12 <dev-haskell/tasty-2
		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/tasty-quickcheck-0.9 <dev-haskell/tasty-quickcheck-0.11 )
"
