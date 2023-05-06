# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Fast binary io-streams adapter"
HOMEPAGE="https://github.com/winterland1989/wire-streams"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/binary-0.8:=[profile?] <dev-haskell/binary-0.9:=[profile?]
	>=dev-haskell/binary-parsers-0.2.1:=[profile?]
	>=dev-haskell/io-streams-1.2:=[profile?]
	>=dev-lang/ghc-7.6.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/quickcheck-2.7
		>=dev-haskell/tasty-0.11
		>=dev-haskell/tasty-quickcheck-0.8 )
"
