# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="The Profunctors package, authored by Edward Kmett"
HOMEPAGE="https://github.com/ekmett/profunctors/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/base-orphans-0.8.4:=[profile?] <dev-haskell/base-orphans-0.9:=[profile?]
	>=dev-haskell/bifunctors-5.5.9:=[profile?] <dev-haskell/bifunctors-6:=[profile?]
	>=dev-haskell/comonad-5.0.8:=[profile?] <dev-haskell/comonad-6:=[profile?]
	>=dev-haskell/contravariant-1.5.3:=[profile?] <dev-haskell/contravariant-2:=[profile?]
	>=dev-haskell/distributive-0.5.2:=[profile?] <dev-haskell/distributive-1:=[profile?]
	>=dev-haskell/tagged-0.8.6.1:=[profile?] <dev-haskell/tagged-1:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
