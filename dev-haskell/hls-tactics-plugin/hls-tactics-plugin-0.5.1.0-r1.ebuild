# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: -pedantic

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Tactics plugin for Haskell Language Server"
HOMEPAGE="https://hackage.haskell.org/package/hls-tactics-plugin"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz
	https://hackage.haskell.org/package/${P}/revision/1.cabal -> ${PF}.cabal"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/extra:=[profile?]
	dev-haskell/fingertree:=[profile?]
	dev-haskell/generic-lens:=[profile?]
	dev-haskell/ghc-exactprint:=[profile?]
	dev-haskell/ghc-source-gen:=[profile?]
	>=dev-haskell/ghcide-0.7.3:=[profile?] <=dev-haskell/ghcide-0.7.4:=[profile?]
	>=dev-haskell/haskell-lsp-0.22:=[profile?] <dev-haskell/haskell-lsp-0.24:=[profile?]
	dev-haskell/hls-plugin-api:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/refinery-0.3:=[profile?] <dev-haskell/refinery-0.4:=[profile?]
	>=dev-haskell/retrie-0.1.1.0:=[profile?]
	>=dev-haskell/shake-0.17.5:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? ( dev-haskell/checkers
		dev-haskell/hie-bios
		dev-haskell/hspec
		dev-haskell/quickcheck )
"

src_prepare() {
	default
	cp "${DISTDIR}/${PF}.cabal" "${S}/${PN}.cabal" || die
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-pedantic
}