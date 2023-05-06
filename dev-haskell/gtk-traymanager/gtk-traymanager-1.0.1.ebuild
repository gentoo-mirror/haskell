# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A wrapper around the eggtraymanager library for Linux system trays"
HOMEPAGE="https://github.com/travitch/gtk-traymanager"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/glib-0.12.1:=[profile?] <dev-haskell/glib-0.15:=[profile?]
	dev-haskell/gtk3:=[profile?]
	>=dev-lang/ghc-7.4.1:=[profile?]
	x11-libs/libX11
	x11-libs/gtk+:3[X]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	virtual/pkgconfig
"
