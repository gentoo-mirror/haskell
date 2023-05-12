# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Simple reactive programming with GTK GObject Introspection"
HOMEPAGE="https://github.com/mr/reactive-banana-gi-gtk"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="public-domain"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/gi-gtk-3.0.1.1:=[profile?] <dev-haskell/gi-gtk-5.0:=[profile?]
	>=dev-haskell/haskell-gi-base-0.20:=[profile?]
	>=dev-haskell/reactive-banana-1.2.1.0:=[profile?] <dev-haskell/reactive-banana-1.3:=[profile?]
	>=dev-haskell/text-1.2.2.1:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"

src_prepare() {
	default

	cabal_chdeps \
		'haskell-gi-base >=0.20 && <0.24' 'haskell-gi-base >=0.20' \
		'base >=4.13.0.0 && <4.14' 'base >=4.13.0.0'
}
