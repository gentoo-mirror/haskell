# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_PN="persistent-mongoDB"

CABAL_FEATURES="lib profile haddock hoogle hscolour" #test-suite needs running database
inherit haskell-cabal

DESCRIPTION="Backend for the persistent library using mongoDB"
HOMEPAGE="https://www.yesodweb.com/book/persistent"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="high-precision-date"

RESTRICT="test" #needs running database

RDEPEND=">=dev-haskell/aeson-1.0:=[profile?]
	>=dev-haskell/bson-0.3.2:=[profile?] <dev-haskell/bson-0.5:=[profile?]
	>=dev-haskell/cereal-0.5:=[profile?]
	>=dev-haskell/conduit-1.2:=[profile?]
	>=dev-haskell/http-api-data-0.3.7:=[profile?] <dev-haskell/http-api-data-0.7:=[profile?]
	>=dev-haskell/mongodb-2.7.1.2:=[profile?] <dev-haskell/mongodb-2.8:=[profile?]
	>=dev-haskell/network-2.6:=[profile?]
	>=dev-haskell/path-pieces-0.2:=[profile?]
	>=dev-haskell/persistent-2.12:=[profile?] <dev-haskell/persistent-3:=[profile?]
	>=dev-haskell/resource-pool-0.2:=[profile?] <dev-haskell/resource-pool-0.5:=[profile?]
	>=dev-haskell/resourcet-1.1:=[profile?]
	>=dev-haskell/text-1.2:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag high-precision-date high_precision_date)
}
