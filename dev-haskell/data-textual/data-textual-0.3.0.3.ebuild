# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.2

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Human-friendly textual representations"
HOMEPAGE="https://github.com/mvv/data-textual"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/parsers-0.5:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/text-latin1-0.3.1:=[profile?]
	>=dev-haskell/text-printer-0.4:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/quickcheck-2.4
		>=dev-haskell/test-framework-0.5
		>=dev-haskell/test-framework-quickcheck2-0.2
		>=dev-haskell/type-hint-0.1 )
"
