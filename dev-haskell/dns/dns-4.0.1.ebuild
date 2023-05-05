# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="DNS library in Haskell"
HOMEPAGE="https://hackage.haskell.org/package/dns"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # uses internet to test resolver

RDEPEND="dev-haskell/async:=[profile?]
	dev-haskell/attoparsec:=[profile?]
	dev-haskell/auto-update:=[profile?]
	dev-haskell/base16-bytestring:=[profile?]
	dev-haskell/base64-bytestring:=[profile?]
	dev-haskell/cryptonite:=[profile?]
	dev-haskell/hourglass:=[profile?]
	>=dev-haskell/iproute-1.3.2:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/network-2.3:=[profile?]
	dev-haskell/psqueues:=[profile?]
	>=dev-lang/ghc-7.4.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.0
	test? ( dev-haskell/doctest
		dev-haskell/hspec
		>=dev-haskell/quickcheck-2.9
		dev-haskell/word8 )
"
