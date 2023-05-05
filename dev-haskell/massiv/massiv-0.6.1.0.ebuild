# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Massiv is an Array Library"
HOMEPAGE="https://github.com/lehins/massiv"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="unsafe-checks"

RDEPEND="dev-haskell/exceptions:=[profile?]
	dev-haskell/primitive:=[profile?]
	>=dev-haskell/scheduler-1.5.0:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/doctest-0.15
		dev-haskell/mersenne-random-pure64
		dev-haskell/quickcheck
		dev-haskell/random
		>=dev-haskell/splitmix-0.0.1 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag unsafe-checks unsafe-checks)
}
