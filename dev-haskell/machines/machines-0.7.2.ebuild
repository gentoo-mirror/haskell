# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Networked stream transducers"
HOMEPAGE="https://github.com/ekmett/machines/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/adjunctions-4.2:=[profile?] <dev-haskell/adjunctions-5:=[profile?]
	>=dev-haskell/comonad-3:=[profile?] <dev-haskell/comonad-6:=[profile?]
	<dev-haskell/distributive-0.7:=[profile?]
	>=dev-haskell/mtl-2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/pointed-3:=[profile?] <dev-haskell/pointed-6:=[profile?]
	>=dev-haskell/profunctors-3:=[profile?] <dev-haskell/profunctors-6:=[profile?]
	>=dev-haskell/semigroupoids-5:=[profile?] <dev-haskell/semigroupoids-6:=[profile?]
	>=dev-haskell/semigroups-0.8.3:=[profile?] <dev-haskell/semigroups-1:=[profile?]
	>=dev-haskell/transformers-compat-0.3:=[profile?]
	>=dev-haskell/void-0.6.1:=[profile?] <dev-haskell/void-1:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
