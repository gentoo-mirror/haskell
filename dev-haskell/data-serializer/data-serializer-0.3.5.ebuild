# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Common API for serialization libraries"
HOMEPAGE="https://github.com/mvv/data-serializer"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/cereal-0.4.1:=[profile?]
	>=dev-haskell/data-endian-0.1.1:=[profile?]
	>=dev-haskell/parsers-0.12.3:=[profile?]
	>=dev-haskell/split-0.2:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/tasty-0.8
		>=dev-haskell/tasty-quickcheck-0.8 )
"
