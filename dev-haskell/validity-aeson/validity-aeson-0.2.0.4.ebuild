# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Validity instances for aeson"
HOMEPAGE="https://github.com/NorfairKing/validity#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-haskell/aeson:=[profile?]
	>=dev-haskell/validity-0.5:=[profile?]
	>=dev-haskell/validity-scientific-0.2:=[profile?]
	>=dev-haskell/validity-text-0.3:=[profile?]
	>=dev-haskell/validity-unordered-containers-0.1:=[profile?]
	>=dev-haskell/validity-vector-0.1:=[profile?]
	>=dev-lang/ghc-7.8.2:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/hspec )
"
