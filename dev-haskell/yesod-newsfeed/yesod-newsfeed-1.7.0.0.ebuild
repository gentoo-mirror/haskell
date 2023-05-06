# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Helper functions and data types for producing News feeds"
HOMEPAGE="http://www.yesodweb.com/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/blaze-html-0.5:=[profile?]
	>=dev-haskell/blaze-markup-0.5.1:=[profile?]
	>=dev-haskell/shakespeare-2.0:=[profile?]
	>=dev-haskell/text-0.9:=[profile?]
	>=dev-haskell/xml-conduit-1.0:=[profile?]
	>=dev-haskell/yesod-core-1.6:=[profile?] <dev-haskell/yesod-core-1.7:=[profile?]
	>=dev-lang/ghc-7.4.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"
