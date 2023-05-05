# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="PostgreSQL AST parsing and rendering"
HOMEPAGE="https://github.com/nikita-volkov/postgresql-syntax"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/case-insensitive-1.2.1:=[profile?] <dev-haskell/case-insensitive-2:=[profile?]
	>=dev-haskell/hashable-1.3.5:=[profile?] <dev-haskell/hashable-2:=[profile?]
	>=dev-haskell/headed-megaparsec-0.2.0.1:=[profile?] <dev-haskell/headed-megaparsec-0.3:=[profile?]
	>=dev-haskell/megaparsec-9.2:=[profile?] <dev-haskell/megaparsec-10:=[profile?]
	>=dev-haskell/parser-combinators-1.3:=[profile?] <dev-haskell/parser-combinators-1.4:=[profile?]
	>=dev-haskell/text-builder-0.6.6.3:=[profile?] <dev-haskell/text-builder-0.7:=[profile?]
	>=dev-haskell/unordered-containers-0.2.16:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-lang/ghc-8.6.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? ( >=dev-haskell/hedgehog-1.0.1 <dev-haskell/hedgehog-2
		>=dev-haskell/quickcheck-2.10 <dev-haskell/quickcheck-3
		>=dev-haskell/quickcheck-instances-0.3.22 <dev-haskell/quickcheck-instances-0.4
		>=dev-haskell/rerebase-1.6.1 <dev-haskell/rerebase-2
		>=dev-haskell/tasty-1.2.3 <dev-haskell/tasty-2
		>=dev-haskell/tasty-hunit-0.10 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/tasty-quickcheck-0.10 <dev-haskell/tasty-quickcheck-0.11 )
"
