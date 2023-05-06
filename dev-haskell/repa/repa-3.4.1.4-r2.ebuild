# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="High performance, regular, shape polymorphic parallel arrays"
HOMEPAGE="http://repa.ouroborus.net"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/quickcheck-2.8:2=[profile?]
	>=dev-haskell/vector-0.11:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-7.10.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_prepare() {
	default

	cabal_chdeps \
		'QuickCheck           >= 2.8 && < 2.12' 'QuickCheck           >= 2.8' \
		'base                 >= 4.8 && < 4.13' 'base                 >= 4.8'
}
