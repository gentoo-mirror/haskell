# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Safety for the pipes ecosystem"
HOMEPAGE="https://hackage.haskell.org/package/pipes-safe"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/exceptions-0.6:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/monad-control-1.0.0.4:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/pipes-4.3.0:=[profile?] <dev-haskell/pipes-4.4:=[profile?]
	>=dev-haskell/primitive-0.6.2.0:=[profile?] <dev-haskell/primitive-0.8:=[profile?]
	>=dev-haskell/transformers-base-0.4.4:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
