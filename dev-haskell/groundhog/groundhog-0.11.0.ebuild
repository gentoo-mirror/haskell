# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Type-safe datatype-database mapping library"
HOMEPAGE="https://github.com/lykahb/groundhog"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.5:=[profile?]
	>=dev-haskell/attoparsec-0.11:=[profile?]
	dev-haskell/base64-bytestring:=[profile?]
	>=dev-haskell/monad-control-0.3:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?]
	>=dev-haskell/resourcet-1.1.2:=[profile?]
	dev-haskell/safe-exceptions:=[profile?]
	dev-haskell/scientific:=[profile?]
	dev-haskell/semigroups:=[profile?]
	>=dev-haskell/text-0.8:=[profile?]
	dev-haskell/transformers-base:=[profile?]
	>=dev-haskell/transformers-compat-0.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
