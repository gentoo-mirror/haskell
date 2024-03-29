# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="an elementary streaming prelude and general stream type"
HOMEPAGE="https://github.com/haskell-streaming/streaming"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/mmorph-1.0:=[profile?] <dev-haskell/mmorph-1.3:=[profile?]
	<dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-lang/ghc-8.10.6:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.1.0
	test? ( >=dev-haskell/hspec-2.7
		>=dev-haskell/quickcheck-2.13 )
"
