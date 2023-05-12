# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.6.9999
#hackport: flags: skiphlinttester:skip-hlint-tester
CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="SMT Based Verification: Symbolic Haskell theorem prover using SMT solving"
HOMEPAGE="http://leventerkok.github.com/sbv/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="skip-hlint-tester"

# SBVConnections: Unable to locate executable for ABC
RESTRICT=test

RDEPEND="dev-haskell/async:=[profile?]
	dev-haskell/cracknum:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/quickcheck:2=[profile?]
	dev-haskell/random:=[profile?]
	dev-haskell/syb:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/doctest
		dev-haskell/glob
		dev-haskell/tasty
		dev-haskell/tasty-golden
		dev-haskell/tasty-hunit
		dev-haskell/tasty-quickcheck
		!skip-hlint-tester? ( dev-haskell/hlint ) )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag skip-hlint-tester skiphlinttester)
}
