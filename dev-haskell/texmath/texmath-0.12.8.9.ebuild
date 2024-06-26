# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999
#hackport: flags: +network-uri

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Conversion between math formats"
HOMEPAGE="https://github.com/jgm/texmath"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="executable server"

RDEPEND=">=dev-haskell/pandoc-types-1.20:=[profile?] <dev-haskell/pandoc-types-1.24:=[profile?]
	>=dev-haskell/parsec-3:=[profile?]
	dev-haskell/split:=[profile?]
	>=dev-haskell/syb-0.4.2:=[profile?] <dev-haskell/syb-0.8:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/typst-symbols-0.1.6:=[profile?] <dev-haskell/typst-symbols-0.1.7:=[profile?]
	dev-haskell/xml:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	executable? ( dev-haskell/aeson:=[profile?]
			>=dev-haskell/network-uri-2.6:=[profile?]
			dev-haskell/pretty-show:=[profile?] )
	!executable? ( server? ( dev-haskell/aeson:=[profile?] ) )
	server? ( dev-haskell/optparse-applicative:=[profile?]
			dev-haskell/safe:=[profile?]
			dev-haskell/servant-server:=[profile?]
			dev-haskell/wai:=[profile?]
			dev-haskell/wai-logger:=[profile?]
			dev-haskell/warp:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/tagged
		dev-haskell/tasty
		dev-haskell/tasty-golden
		!executable? ( dev-haskell/pretty-show ) )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag executable executable) \
		--flag=network-uri \
		$(cabal_flag server server)
}
