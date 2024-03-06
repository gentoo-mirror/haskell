# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Small library for parsing different dates formats"
HOMEPAGE="https://github.com/portnov/dates"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/base-unicode-symbols-0.2:=[profile?] <dev-haskell/base-unicode-symbols-0.3:=[profile?]
	>=dev-haskell/parsec-3.1:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/syb-0.3.7:=[profile?] <dev-haskell/syb-0.8:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/hspec )
"

src_prepare() {
	default

	# https://github.com/portnov/dates/issues/6
	cabal_chdeps \
		'base >=4.9 && < 4.13' 'base >=4.9' \
		'base >= 4.9 && < 4.13' 'base >= 4.9'
}
