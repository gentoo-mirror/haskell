# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Orphan instances for the UUID datatype"
HOMEPAGE="https://hackage.haskell.org/package/uuid-orphans"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-haskell/safecopy:=[profile?]
	dev-haskell/th-lift:=[profile?]
	>=dev-haskell/uuid-types-1.0.2:=[profile?]
	dev-haskell/web-routes:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
