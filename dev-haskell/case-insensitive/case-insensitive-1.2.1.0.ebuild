# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Case insensitive string comparison"
HOMEPAGE="https://github.com/basvandijk/case-insensitive"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/hashable-1.0:=[profile?]
	>=dev-haskell/semigroups-0.18:=[profile?]
	>=dev-haskell/text-0.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/hunit-1.2.2
		>=dev-haskell/test-framework-0.2.4
		>=dev-haskell/test-framework-hunit-0.2.4 )
"
