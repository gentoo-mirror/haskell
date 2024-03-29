# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.3

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="2D and 3D plots using gnuplot"
HOMEPAGE="https://www.haskell.org/haskellwiki/Gnuplot"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="buildexamples executepipe executeshell"

RDEPEND=">=dev-haskell/data-accessor-0.2.2:=[profile?] <dev-haskell/data-accessor-0.3:=[profile?]
	>=dev-haskell/data-accessor-transformers-0.2.1:=[profile?] <dev-haskell/data-accessor-transformers-0.3:=[profile?]
	>=dev-haskell/semigroups-0.1:=[profile?] <dev-haskell/semigroups-1.0:=[profile?]
	>=dev-haskell/temporary-1.1:=[profile?] <dev-haskell/temporary-1.4:=[profile?]
	>=dev-haskell/utility-ht-0.0.12:=[profile?] <dev-haskell/utility-ht-0.1:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	!executepipe? ( executeshell? ( >=dev-haskell/shell-utility-0.0:=[profile?] <dev-haskell/shell-utility-0.1:=[profile?] ) )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag buildexamples buildexamples) \
		$(cabal_flag executepipe executepipe) \
		$(cabal_flag executeshell executeshell)
}
