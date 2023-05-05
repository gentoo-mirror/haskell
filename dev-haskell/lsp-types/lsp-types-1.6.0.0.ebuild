# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell library for the Microsoft Language Server Protocol, data types"
HOMEPAGE="https://github.com/haskell/lsp"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/aeson-1.2.2.0:=[profile?]
	dev-haskell/data-default:=[profile?]
	>=dev-haskell/diff-0.2:=[profile?]
	dev-haskell/dlist:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/lens-4.15.2:=[profile?]
	dev-haskell/mod:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?]
	dev-haskell/safe:=[profile?]
	dev-haskell/scientific:=[profile?]
	dev-haskell/some:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.10.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
	test? ( >=dev-haskell/aeson-2.0.3.0
		dev-haskell/hspec
		dev-haskell/quickcheck
		dev-haskell/quickcheck-instances
		dev-haskell/tuple )
"
