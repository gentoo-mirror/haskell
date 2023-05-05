# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Simple and incomplete Excel file parser/writer"
HOMEPAGE="https://github.com/qrilka/xlsx"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="microlens"

RDEPEND="dev-haskell/attoparsec:=[profile?]
	dev-haskell/base64-bytestring:=[profile?]
	dev-haskell/binary-search:=[profile?]
	>=dev-haskell/conduit-1.0.0:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/errors:=[profile?]
	dev-haskell/extra:=[profile?]
	dev-haskell/network-uri:=[profile?]
	>=dev-haskell/old-locale-1.0.0.5:=[profile?]
	>=dev-haskell/safe-0.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?]
	>=dev-haskell/xeno-0.3.2:=[profile?]
	>=dev-haskell/xml-conduit-1.1.0:=[profile?]
	>=dev-haskell/zip-archive-0.2:=[profile?]
	>=dev-haskell/zlib-0.5.4.0:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
	microlens? ( >=dev-haskell/microlens-0.4:=[profile?] <dev-haskell/microlens-0.5:=[profile?]
			dev-haskell/microlens-ghc:=[profile?]
			dev-haskell/microlens-mtl:=[profile?]
			dev-haskell/microlens-th:=[profile?] )
	!microlens? ( >=dev-haskell/lens-3.8:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/diff-0.3.0
		dev-haskell/groom
		dev-haskell/raw-strings-qq
		dev-haskell/smallcheck
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/tasty-smallcheck )
"

src_prepare() {
	default

	cabal_chdeps \
		'lens         >= 3.8 && < 5.1' 'lens >=3.8'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag microlens microlens)
}
