# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.5.9999
#hackport: flags: -have-quartz-gtk,-use-deprecated

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Binding to the GTK+ OpenGL Extension"
HOMEPAGE="http://projects.haskell.org/gtk2hs/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="2/${PV}"
KEYWORDS="~amd64"
IUSE=""

GHC_BOOTSTRAP_PACKAGES=(
	gtk2hs-buildtools
)

RDEPEND=">=dev-haskell/glib-0.13.3.0:=[profile?] <dev-haskell/glib-0.14:=[profile?]
	>=dev-haskell/gtk-0.14.3:=[profile?] <dev-haskell/gtk-0.16:=[profile?]
	>=dev-haskell/pango-0.13.2.0:=[profile?] <dev-haskell/pango-0.14:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	x11-libs/gtkglext
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24
	>=dev-haskell/gtk2hs-buildtools-0.13.2.0 <dev-haskell/gtk2hs-buildtools-0.14
	virtual/pkgconfig
"

PATCHES=("${FILESDIR}"/${P}-gtk.patch)

src_prepare() {
	default

	cabal_chdeps \
		'Cabal >= 1.24 && < 2.3' 'Cabal >= 1.24' \
		'gtk   >= 0.14.3 && < 0.15' 'gtk   >= 0.14.3'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-have-quartz-gtk \
		--flag=-use-deprecated
}
