# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Used to be Haskell 98 Lenses"
HOMEPAGE="https://github.com/roconnor/data-lens/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+derivedatatypeable"

RDEPEND=">=dev-haskell/comonad-4.0:=[profile?]
	>=dev-haskell/semigroupoids-4.0:=[profile?]
	>=dev-haskell/transformers-0.2.0:=[profile?]
	>=dev-haskell/transformers-compat-0.4:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

PATCHES=( "${FILESDIR}/${P}-comonad-5.patch" )

src_prepare() {
	default

	cabal_chdeps \
		'comonad              >= 4.0     && < 4.3' 'comonad              >= 4.0' \
		'transformers         >= 0.2.0   && < 0.5' 'transformers         >= 0.2.0' \
		'semigroupoids        >= 4.0     && < 5.1' 'semigroupoids        >= 4.0' \
		'containers           >= 0.3     && < 0.6' 'containers           >= 0.3'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag derivedatatypeable derivedatatypeable)
}
