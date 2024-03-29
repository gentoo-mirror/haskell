# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Crypto-api interfaces for cryptohash"
HOMEPAGE="https://github.com/vincenthz/hs-cryptohash-cryptoapi"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/cereal-0.2:=[profile?]
	>=dev-haskell/crypto-api-0.11:=[profile?]
	>=dev-haskell/cryptonite-0.13:=[profile?]
	dev-haskell/memory:=[profile?]
	>=dev-haskell/tagged-0.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"
