# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="An RFC 5988 parser and writer for the HTTP Link header"
HOMEPAGE="https://github.com/myfreeweb/http-link-header"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="public-domain"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-haskell/attoparsec:=[profile?]
	dev-haskell/bytestring-conversion:=[profile?]
	dev-haskell/errors:=[profile?]
	dev-haskell/http-api-data:=[profile?]
	dev-haskell/network-uri:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/hspec
		dev-haskell/hspec-attoparsec
		dev-haskell/quickcheck )
"
