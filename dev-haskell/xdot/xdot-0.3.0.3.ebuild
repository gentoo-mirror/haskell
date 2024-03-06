# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Parse Graphviz xdot files and interactively view them using GTK and Cairo"
HOMEPAGE="https://hackage.haskell.org/package/xdot"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/cairo-0.12:=[profile?]
	>=dev-haskell/graphviz-2999.16:=[profile?]
	>=dev-haskell/gtk3-0.12:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?]
	>=dev-haskell/polyparse-1.8:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
