# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.1.9999
#hackport: flags: -developer

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Fast conversion between double precision floating point and text"
HOMEPAGE="https://github.com/bos/double-conversion"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RESTRICT=test # fails to compare 0.0 with 0.0

RDEPEND=">=dev-haskell/text-0.11.0.8:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	sys-devel/gcc:*[cxx]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( dev-haskell/hunit
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit
		dev-haskell/test-framework-quickcheck2 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-developer
}
