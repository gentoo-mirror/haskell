# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Construction of context-adjusted pretty output"
HOMEPAGE="https://hackage.haskell.org/package/sayable"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/prettyprinter-1.7:=[profile?] <dev-haskell/prettyprinter-1.8:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/th-abstraction:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/hspec
		>=dev-haskell/tasty-1.4 <dev-haskell/tasty-1.6
		>=dev-haskell/tasty-ant-xml-1.1 <dev-haskell/tasty-ant-xml-1.2
		>=dev-haskell/tasty-hspec-1.2 <dev-haskell/tasty-hspec-1.3 )
"
