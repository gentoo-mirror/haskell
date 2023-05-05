# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1
#hackport: flags: -onlygsl

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="GSL Statistics interface"
HOMEPAGE="http://code.haskell.org/hmatrix-gsl-stats"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/hmatrix-0.18:=[profile?]
	dev-haskell/storable-complex:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-7.4.1:=[profile?]
	sci-libs/gsl
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10.1.0
	virtual/pkgconfig
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-onlygsl
}
