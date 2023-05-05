# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Pattern language for improvised music"
HOMEPAGE="https://tidalcycles.org/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="<dev-haskell/async-2.3:=[profile?]
	<dev-haskell/bifunctors-5.6:=[profile?]
	<dev-haskell/clock-0.9:=[profile?]
	<dev-haskell/colour-2.4:=[profile?]
	<dev-haskell/exceptions-0.11:=[profile?]
	<dev-haskell/hint-0.10:=[profile?]
	>=dev-haskell/hosc-0.17:=[profile?] <dev-haskell/hosc-0.20:=[profile?]
	>=dev-haskell/mtl-2.2:=[profile?]
	<dev-haskell/network-3.2:=[profile?]
	>=dev-haskell/parsec-3.1.12:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	<dev-haskell/primitive-0.8:=[profile?]
	<dev-haskell/random-1.3:=[profile?]
	<dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/microspec-0.2.0.1 )
"
