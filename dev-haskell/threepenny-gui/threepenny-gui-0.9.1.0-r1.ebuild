# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999
#hackport: flags: buildexamples:examples

CABAL_FEATURES="lib profile haddock hoogle hscolour"
CABAL_HACKAGE_REVISION="4"
inherit haskell-cabal

DESCRIPTION="GUI framework that uses the web browser as a display"
HOMEPAGE="https://wiki.haskell.org/Threepenny-gui"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz
	https://hackage.haskell.org/package/${P}/revision/${CABAL_HACKAGE_REVISION}.cabal -> ${PF}.cabal"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="examples rebug"

RDEPEND=">=dev-haskell/aeson-1.0:=[profile?] <dev-haskell/aeson-2.1:=[profile?]
	>=dev-haskell/async-2.0:=[profile?] <dev-haskell/async-2.3:=[profile?]
	>=dev-haskell/data-default-0.5.0:=[profile?] <dev-haskell/data-default-0.8:=[profile?]
	>=dev-haskell/file-embed-0.0.10:=[profile?] <dev-haskell/file-embed-0.1:=[profile?]
	>=dev-haskell/hashable-1.1.0:=[profile?] <dev-haskell/hashable-1.5:=[profile?]
	>=dev-haskell/safe-0.3:=[profile?] <dev-haskell/safe-0.4:=[profile?]
	>=dev-haskell/snap-core-0.9.0:=[profile?] <dev-haskell/snap-core-1.1:=[profile?]
	>=dev-haskell/snap-server-0.9.0:=[profile?] <dev-haskell/snap-server-1.2:=[profile?]
	>=dev-haskell/stm-2.2:=[profile?] <dev-haskell/stm-2.6:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vault-0.3:=[profile?] <dev-haskell/vault-0.4:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-haskell/websockets-0.12.5.1:=[profile?] <dev-haskell/websockets-0.13:=[profile?]
	>=dev-haskell/websockets-snap-0.8:=[profile?] <dev-haskell/websockets-snap-0.11:=[profile?]
	>=dev-lang/ghc-8.10.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
"
BDEPEND="app-text/dos2unix"

src_prepare() {
	# pull revised cabal from upstream
	cp "${DISTDIR}/${PF}.cabal" "${S}/${PN}.cabal" || die

	# Convert to unix line endings
	dos2unix "${S}/${PN}.cabal" || die

	# Apply patches *after* pulling the revised cabal
	default
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples buildexamples) \
		$(cabal_flag rebug rebug)
}
