# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="AES"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Fast AES encryption/decryption for bytestrings"
HOMEPAGE="https://hackage.haskell.org/package/AES"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/cereal-0.2:=[profile?]
	>=dev-haskell/monads-tf-0.1:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

S="${WORKDIR}/${MY_P}"
