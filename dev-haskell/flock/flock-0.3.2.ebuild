# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Wrapper for flock(2)"
HOMEPAGE="https://github.com/hesselink/flock"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="|| ( BSD GPL-2 )"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/lifted-base-0.1:=[profile?] <dev-haskell/lifted-base-0.3:=[profile?]
	>=dev-haskell/monad-control-0.3:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
