# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Vec: length-indexed (sized) list"
HOMEPAGE="https://github.com/phadej/vec"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+adjunctions +distributive +semigroupoids"

RDEPEND=">=dev-haskell/fin-0.1.1:=[profile?] <dev-haskell/fin-0.2:=[profile?]
	>=dev-haskell/hashable-1.2.7.0:=[profile?] <dev-haskell/hashable-1.4:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	>=dev-haskell/quickcheck-2.13.2:2=[profile?] <dev-haskell/quickcheck-2.15:2=[profile?]
	adjunctions? ( distributive? ( >=dev-haskell/adjunctions-4.4:=[profile?] <dev-haskell/adjunctions-4.5:=[profile?] ) )
	distributive? ( >=dev-haskell/distributive-0.5.3:=[profile?] <dev-haskell/distributive-0.7:=[profile?] )
	semigroupoids? ( >=dev-haskell/semigroupoids-5.2.2:=[profile?] <dev-haskell/semigroupoids-5.4:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/base-compat
		>=dev-haskell/inspection-testing-0.4.2.2 <dev-haskell/inspection-testing-0.5
		dev-haskell/tagged )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag adjunctions adjunctions) \
		$(cabal_flag distributive distributive) \
		$(cabal_flag semigroupoids semigroupoids)
}