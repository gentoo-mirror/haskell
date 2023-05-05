# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Compile-time checking for partial smart-constructors"
HOMEPAGE="https://github.com/merijn/validated-literals"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/th-compat-0.1.3:=[profile?] <dev-haskell/th-compat-0.2:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/tasty-0.11 <dev-haskell/tasty-1.5
		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/tasty-travis-0.2 <dev-haskell/tasty-travis-0.3 )
"
