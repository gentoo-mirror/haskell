# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A documentation-generation tool for Haskell libraries"
HOMEPAGE="https://www.haskell.org/haddock/"

LICENSE="BSD-2"
SLOT="0/${PV}"
# Keep in sync with ghc-9.4
#KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

CABAL_CHDEPS=(
	'base            ^>= 4.16.0' 'base            >= 4.16.0'
	'hspec           ^>= 2.9' 'hspec >= 2.9'
	'hspec-discover:hspec-discover ^>= 2.9' 'hspec-discover:hspec-discover >= 2.9'
)

RDEPEND="
	>=dev-haskell/ghc-paths-0.1.0.9:=[profile?] <dev-haskell/ghc-paths-0.2:=[profile?]
	>=dev-haskell/haddock-library-1.11:=[profile?] <dev-haskell/haddock-library-1.12:=[profile?]
	>=dev-haskell/parsec-3.1.13.0:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/xhtml-3000.2.2:=[profile?] <dev-haskell/xhtml-3000.3:=[profile?]
	>=dev-lang/ghc-9.4:= <dev-lang/ghc-9.5:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.6.3.0
	test? (
		>=dev-haskell/ghc-paths-0.1.0.12 <dev-haskell/ghc-paths-0.2
		>=dev-haskell/hspec-2.9
		>=dev-haskell/quickcheck-2.14 <dev-haskell/quickcheck-2.15
	)
"
BDEPEND="test? (
	>=dev-haskell/hspec-discover-2.9
)"
