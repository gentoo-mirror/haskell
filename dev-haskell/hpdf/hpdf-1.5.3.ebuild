# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="HPDF"
MY_P="${MY_PN}-${PV}"
S="${WORKDIR}/${MY_P}"

DESCRIPTION="Generation of PDF documents"
HOMEPAGE="https://www.alpheccar.org"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/base64-bytestring-0.1:=[profile?]
	dev-haskell/errors:=[profile?]
	dev-haskell/file-embed:=[profile?]
	dev-haskell/hyphenation:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/network-uri-2.6.0.3:=[profile?]
	>=dev-haskell/parsec-3.1.9:=[profile?]
	>=dev-haskell/random-1.0:=[profile?]
	>=dev-haskell/text-1.2.0:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?]
	>=dev-haskell/zlib-0.5:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/htf-0.10 )
"
