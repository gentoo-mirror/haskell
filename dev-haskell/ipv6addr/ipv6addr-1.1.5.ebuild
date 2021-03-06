# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="IPv6Addr"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Library to deal with IPv6 address text representations"
HOMEPAGE="https://github.com/MichelBoucey/IPv6Addr"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.8.0.2:=[profile?] <dev-haskell/aeson-1.6:=[profile?]
	>=dev-haskell/attoparsec-0.12:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/iproute-1.3:=[profile?] <dev-haskell/iproute-1.8:=[profile?]
	>=dev-haskell/network-2.5:=[profile?] <dev-haskell/network-4:=[profile?]
	>=dev-haskell/network-info-0.2:=[profile?] <=dev-haskell/network-info-0.3:=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <=dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/text-1.1:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( dev-haskell/hunit
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit )
"

S="${WORKDIR}/${MY_P}"
