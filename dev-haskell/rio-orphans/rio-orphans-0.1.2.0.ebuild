# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Orphan instances for the RIO type in the rio package"
HOMEPAGE="https://github.com/commercialhaskell/rio#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-haskell/exceptions:=[profile?]
	dev-haskell/fast-logger:=[profile?]
	dev-haskell/monad-control:=[profile?]
	dev-haskell/monad-logger:=[profile?]
	dev-haskell/resourcet:=[profile?]
	dev-haskell/rio:=[profile?]
	dev-haskell/transformers-base:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/hspec )
"
