# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # Broken test-suite: missing files
inherit haskell-cabal

DESCRIPTION="Polynomials"
HOMEPAGE="https://github.com/mokus0/polynomial"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="public-domain"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # missing files: Could not find module ‘Tests.Hermite’

RDEPEND="dev-haskell/prettyclass:=[profile?]
	dev-haskell/vector:=[profile?]
	dev-haskell/vector-space:=[profile?]
	>=dev-haskell/vector-th-unbox-0.2.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

PATCHES=( ${FILESDIR}/${P}-prelude-hiding.patch )

src_prepare() {
	default

	cabal_chdeps \
		'HUnit == 1.2.*' 'HUnit >= 1.2'
}
