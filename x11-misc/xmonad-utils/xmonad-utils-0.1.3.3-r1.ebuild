# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.5

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="A small collection of X utilities"
HOMEPAGE="https://github.com/LeifW/xmonad-utils"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/random-1.0:=
	>=dev-haskell/x11-1.3:=
	>=dev-lang/ghc-7.4.1:=
	virtual/libcrypt:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"
