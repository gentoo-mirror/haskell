# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999
#hackport: flags: -bytestring-builder,-developer,-integer-simple

CABAL_FEATURES="lib profile haddock hoogle hscolour" # circular deps in test-suite
# break circular dependencies:
# https://github.com/gentoo-haskell/gentoo-haskell/issues/810
CABAL_FEATURES+=" nocabaldep"
inherit haskell-cabal

DESCRIPTION="An efficient packed Unicode text type"
HOMEPAGE="https://github.com/haskell/text"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

# break cyclic dependencies:
RESTRICT=test

RDEPEND=">=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
"
#	test? (
#		>=dev-haskell/quickcheck-2.14.1 <dev-haskell/quickcheck-2.15
#		>=dev-haskell/quickcheck-unicode-1.0.1.0
#		dev-haskell/random
#		dev-haskell/tasty
#		dev-haskell/tasty-hunit
#		dev-haskell/tasty-inspection-testing
#		dev-haskell/tasty-quickcheck
#	)

src_configure() {
	haskell-cabal_src_configure \
		--flag=-bytestring-builder \
		--flag=-developer \
		--flag=-integer-simple
}

CABAL_CORE_LIB_GHC_PV="9.0.2 9.2.4 9.2.5"
