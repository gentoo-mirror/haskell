# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Extra typeclass instances for mono-traversable"
HOMEPAGE="https://github.com/snoyberg/mono-traversable#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/comonad-3.0.3:=[profile?]
	>=dev-haskell/dlist-0.6:=[profile?] <dev-haskell/dlist-1.1:=[profile?]
	>=dev-haskell/dlist-instances-0.1:=[profile?] <dev-haskell/dlist-instances-0.2:=[profile?]
	>=dev-haskell/mono-traversable-1.0:=[profile?] <dev-haskell/mono-traversable-1.1:=[profile?]
	>=dev-haskell/semigroupoids-3.0:=[profile?]
	dev-haskell/semigroups:=[profile?]
	dev-haskell/vector-instances:=[profile?]
	>=dev-lang/ghc-8.2.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.0.0.2
"
