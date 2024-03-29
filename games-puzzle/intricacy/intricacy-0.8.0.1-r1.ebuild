# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild originally generated by hackport 0.5.6.9999
#hackport: flags: +game

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="A game of competitive puzzle-design"
HOMEPAGE="http://mbays.freeshell.org/intricacy"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="+curses +sdl +sound"

RDEPEND=">=dev-haskell/cryptonite-0.16:=
	>=dev-haskell/exceptions-0.8.3:=
	>=dev-haskell/memory-0.11:=
	>=dev-haskell/mtl-2.2:=
	>=dev-haskell/network-fancy-0.1.5:=
	>=dev-haskell/safe-0.3.18:=
	>=dev-haskell/stm-2.1:=
	>=dev-haskell/transformers-0.4:=
	>=dev-haskell/vector-0.9:=
	>=dev-lang/ghc-7.10.1:=
	curses? ( >=dev-haskell/hscurses-1.4:=
		sys-libs/ncurses[unicode(+)] )
	sdl? ( >=dev-haskell/sdl-0.6.5:=
		>=dev-haskell/sdl-gfx-0.6:=
		>=dev-haskell/sdl-ttf-0.6:=
		sound? ( >=dev-haskell/random-1.0:=
			>=dev-haskell/sdl-mixer-0.6:= ) )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_prepare() {
	default

	cabal_chdeps \
		'cryptonite >= 0.16 && <0.28' 'cryptonite >= 0.16'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag curses curses) \
		--flag=game \
		$(cabal_flag sdl sdl) \
		$(cabal_flag sound sound)
}
