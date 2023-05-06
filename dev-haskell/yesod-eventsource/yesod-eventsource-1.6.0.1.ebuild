# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Server-sent events support for Yesod apps"
HOMEPAGE="https://www.yesodweb.com/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-haskell/blaze-builder:=[profile?]
	>=dev-haskell/conduit-1.3:=[profile?]
	>=dev-haskell/wai-1.3:=[profile?]
	dev-haskell/wai-extra:=[profile?]
	>=dev-haskell/yesod-core-1.6:=[profile?] <dev-haskell/yesod-core-1.7:=[profile?]
	>=dev-lang/ghc-8.2.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.0.0.2
"
