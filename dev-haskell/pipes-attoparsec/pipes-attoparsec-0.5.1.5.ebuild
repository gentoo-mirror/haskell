# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Attoparsec and Pipes integration"
HOMEPAGE="https://github.com/k0001/pipes-attoparsec"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.10:=[profile?]
	>=dev-haskell/pipes-4.1:=[profile?]
	>=dev-haskell/pipes-parse-3.0.1:=[profile?]
	>=dev-haskell/text-0.11.2.0:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/hunit-1.2
		dev-haskell/mmorph
		>=dev-haskell/tasty-0.7
		>=dev-haskell/tasty-hunit-0.4 )
"
