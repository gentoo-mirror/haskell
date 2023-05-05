# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Contention-free STM hash map"
HOMEPAGE="https://github.com/mcschroeder/ttrie"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/atomic-primops-0.6:=[profile?]
	>=dev-haskell/hashable-1.2:=[profile?]
	>=dev-haskell/primitive-0.5:=[profile?]
	>=dev-haskell/stm-2:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/quickcheck-2.5
		>=dev-haskell/test-framework-0.8
		>=dev-haskell/test-framework-quickcheck2-0.3 )
"
