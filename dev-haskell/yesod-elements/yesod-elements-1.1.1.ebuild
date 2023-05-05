# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Non template haskell markup building function in the spirit of lucid"
HOMEPAGE="https://hackage.haskell.org/package/yesod-elements"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/blaze-html-0.9.1.0:=[profile?]
	>=dev-haskell/blaze-markup-0.8.2:=[profile?]
	>=dev-haskell/text-1.2.0:=[profile?]
	>=dev-haskell/yesod-core-1.6:=[profile?]
	>=dev-lang/ghc-8.0.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.0
"
