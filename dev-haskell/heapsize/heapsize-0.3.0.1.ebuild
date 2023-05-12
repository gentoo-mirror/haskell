# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Determine the size of runtime data structures"
HOMEPAGE="https://hackage.haskell.org/package/heapsize"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-haskell/exceptions:=[profile?]
	>=dev-haskell/hashable-1.3:=[profile?]
	dev-haskell/hashtables:=[profile?]
	dev-haskell/primitive:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?]
	>=dev-lang/ghc-8.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
"
