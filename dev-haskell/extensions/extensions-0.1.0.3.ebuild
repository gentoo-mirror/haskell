# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Parse Haskell Language Extensions"
HOMEPAGE="https://github.com/kowainik/extensions"

LICENSE="MPL-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+executable"

RDEPEND=">=dev-haskell/cabal-3.14:=[profile?] <dev-haskell/cabal-3.15:=[profile?]
	>=dev-haskell/parsec-3.1:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/text-1.2.3:=[profile?] <dev-haskell/text-2.2:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	executable? ( >=dev-haskell/colourista-0.1:=[profile?] <dev-haskell/colourista-0.3:=[profile?]
			>=dev-haskell/optparse-applicative-0.15:=[profile?] <dev-haskell/optparse-applicative-0.19:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/hedgehog-1.0 <dev-haskell/hedgehog-1.5
		dev-haskell/hspec
		>=dev-haskell/hspec-hedgehog-0.0.1 <dev-haskell/hspec-hedgehog-0.2 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag executable executable)
}
