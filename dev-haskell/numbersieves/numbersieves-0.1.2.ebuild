# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="NumberSieves"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Number Theoretic Sieves:  primes, factorization, and Euler's Totient"
HOMEPAGE="http://patch-tag.com/r/lpsmith/NumberSieves"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-lang/ghc-7.4.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

S="${WORKDIR}/${MY_P}"

PATCHES=( "${FILESDIR}/${P}-ghc-7.10.patch" )
