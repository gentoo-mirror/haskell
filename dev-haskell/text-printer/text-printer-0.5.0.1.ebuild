# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Abstract interface for text builders/printers"
HOMEPAGE="https://github.com/mvv/text-printer"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/semigroups-0.18.2:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/text-latin1-0.3.1:=[profile?]
	>=dev-lang/ghc-7.6.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/quickcheck-2.4
		>=dev-haskell/test-framework-0.5
		>=dev-haskell/test-framework-quickcheck2-0.2 )
"
