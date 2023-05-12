# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Catching all exceptions from within an enclosed computation"
HOMEPAGE="https://github.com/jcristovao/enclosed-exceptions"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/lifted-base-0.2:=[profile?]
	dev-haskell/monad-control:=[profile?]
	dev-haskell/transformers-base:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/async-2.0
		>=dev-haskell/hspec-1.3
		dev-haskell/quickcheck
		dev-haskell/stm )
"
