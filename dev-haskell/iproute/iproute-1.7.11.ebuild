# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="IP Routing Table"
HOMEPAGE="https://www.mew.org/~kazu/proj/iproute/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RESTRICT=test # Ambiguous modules: byte-order-0.1.2.0 byteorder-1.0.4

RDEPEND="dev-haskell/appar:=[profile?]
	dev-haskell/byteorder:=[profile?]
	dev-haskell/network:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/doctest-0.9.3
		dev-haskell/hspec
		dev-haskell/quickcheck
		dev-haskell/safe )
"
