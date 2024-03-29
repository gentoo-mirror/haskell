# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Efficient consistent hashing"
HOMEPAGE="https://github.com/mkscrg/hashring"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RESTRICT=test # insert then delete: [Failed] *** Failed! Falsifiable (after 15 tests)

RDEPEND=">=dev-haskell/hashable-1.1.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.9.2
	test? ( dev-haskell/quickcheck
		dev-haskell/test-framework
		dev-haskell/test-framework-quickcheck2 )
"

src_prepare() {
	default

	cabal_chdeps \
		'containers >= 0.4 && < 0.5' 'containers >= 0.4' \
		'hashable >= 1.1.1 && < 1.2' 'hashable >= 1.1.1'
}
