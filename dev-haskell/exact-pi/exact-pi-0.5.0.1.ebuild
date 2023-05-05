# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Exact rational multiples of pi (and integer powers of pi)"
HOMEPAGE="https://github.com/dmcclean/exact-pi/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/numtype-dk-0.5:=[profile?]
	>=dev-haskell/semigroups-0.8:=[profile?]
	>=dev-lang/ghc-7.8.2:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/quickcheck-2.10
		>=dev-haskell/semigroups-0.9 <dev-haskell/semigroups-1.0
		>=dev-haskell/tasty-0.10
		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/tasty-quickcheck-0.9 <dev-haskell/tasty-quickcheck-0.11 )
"

src_prepare() {
	default

	cabal_chdeps \
		'tasty >=0.10 && <1.2' 'tasty >=0.10' \
		'QuickCheck >=2.10 && <2.12' 'QuickCheck >=2.10' \
		'base >=4.7 && <4.13' 'base >=4.7'
}
