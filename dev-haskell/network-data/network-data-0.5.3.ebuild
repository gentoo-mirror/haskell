# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Library for network data structures and their serialization"
HOMEPAGE="https://hackage.haskell.org/package/network-data"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+small-base"

# dev-haskell/prettyclass is not required for ghc 7.10.1, just adding
# it for backwards compatibility with <ghc 7.10.1

RDEPEND=">=dev-haskell/cereal-0.2:=[profile?]
	>=dev-haskell/prettyclass-1.0:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_prepare() {
	default

	if has_version "<dev-lang/ghc-7.10.1"; then
		cabal_chdeps \
			'pretty >= 1.1.2' 'pretty >= 1.0, prettyclass >= 1.0'
	fi
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag small-base small_base)
}
