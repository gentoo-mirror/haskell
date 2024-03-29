# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell Image Processing (HIP) Library"
HOMEPAGE="https://github.com/lehins/hip"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="disable-chart"

RDEPEND=">=dev-haskell/colour-2.3.3:=[profile?]
	>=dev-haskell/juicypixels-3.3.5:=[profile?]
	>=dev-haskell/netpbm-1.0.1:=[profile?]
	>=dev-haskell/primitive-0.4:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-haskell/repa-3.2.1.1:=[profile?] <dev-haskell/repa-4:=[profile?]
	>=dev-haskell/temporary-1.1.1:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	!disable-chart? ( >=dev-haskell/chart-1.5:=[profile?]
				>=dev-haskell/chart-diagrams-1.5:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( dev-haskell/hspec
		dev-haskell/quickcheck )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag disable-chart disable-chart)
}
