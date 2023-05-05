# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="small dmenu wrapper"
HOMEPAGE="http://dmwit.com/yeganesh"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="profiling"

RDEPEND=">=dev-haskell/strict-0.3:=
	>=dev-haskell/xdg-basedir-0.2:=
	>=dev-lang/ghc-7.4.1:=[profile?]
"
# non-haskell depend
RDEPEND+="
	x11-misc/dmenu
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag profiling profiling)
}
