# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="The Wadler/Leijen Pretty Printer, with annotation support"
HOMEPAGE="https://github.com/david-christiansen/annotated-wl-pprint"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.10.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"
