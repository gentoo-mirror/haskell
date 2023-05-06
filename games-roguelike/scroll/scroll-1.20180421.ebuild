# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6.9999
#hackport: flags: +unix

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="scroll(6), a roguelike game"
HOMEPAGE="https://joeyh.name/code/scroll/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="dev-haskell/case-insensitive:=
	dev-haskell/data-default:=
	dev-haskell/ifelse:=
	dev-haskell/monad-loops:=
	dev-haskell/mtl:=
	dev-haskell/ncurses:=
	dev-haskell/optparse-applicative:=
	dev-haskell/random:=
	dev-haskell/text:=
	dev-haskell/vector:=
	>=dev-lang/ghc-7.4.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=unix
}
