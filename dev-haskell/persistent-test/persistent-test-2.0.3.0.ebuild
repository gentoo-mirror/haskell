# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Tests for Persistent"
HOMEPAGE="http://www.yesodweb.com/book/persistent"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-1.0:=[profile?]
	>=dev-haskell/blaze-html-0.9:=[profile?]
	>=dev-haskell/conduit-1.2.12:=[profile?]
	>=dev-haskell/exceptions-0.8:=[profile?]
	>=dev-haskell/hspec-2.4:=[profile?]
	dev-haskell/hspec-expectations:=[profile?]
	dev-haskell/hunit:=[profile?]
	dev-haskell/monad-control:=[profile?]
	>=dev-haskell/monad-logger-0.3.25:=[profile?]
	>=dev-haskell/path-pieces-0.2:=[profile?]
	dev-haskell/persistent:=[profile?]
	dev-haskell/persistent-template:=[profile?]
	>=dev-haskell/quickcheck-2.9:2=[profile?]
	>=dev-haskell/quickcheck-instances-0.3:=[profile?]
	>=dev-haskell/random-1.1:=[profile?]
	>=dev-haskell/resourcet-1.1:=[profile?]
	>=dev-haskell/text-1.2:=[profile?]
	dev-haskell/transformers-base:=[profile?]
	dev-haskell/unliftio:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"