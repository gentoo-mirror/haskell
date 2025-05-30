# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999
#hackport: flags: buildexamples:examples

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="GUI framework that uses the web browser as a display"
HOMEPAGE="https://wiki.haskell.org/Threepenny-gui"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="examples rebug"

RDEPEND=">=dev-haskell/async-2.0:=[profile?] <dev-haskell/async-2.3:=[profile?]
	>=dev-haskell/data-default-0.5.0:=[profile?] <dev-haskell/data-default-0.9:=[profile?]
	>=dev-haskell/file-embed-0.0.10:=[profile?] <dev-haskell/file-embed-0.1:=[profile?]
	>=dev-haskell/hashable-1.2.0:=[profile?] <dev-haskell/hashable-1.6:=[profile?]
	>=dev-haskell/safe-0.3:=[profile?] <dev-haskell/safe-0.4:=[profile?]
	>=dev-haskell/snap-core-0.9.0:=[profile?] <dev-haskell/snap-core-1.1:=[profile?]
	>=dev-haskell/snap-server-0.9.0:=[profile?] <dev-haskell/snap-server-1.2:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-2.2:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vault-0.3:=[profile?] <dev-haskell/vault-0.4:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-haskell/websockets-snap-0.8:=[profile?] <dev-haskell/websockets-snap-0.11:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	>=dev-haskell/aeson-0.7:=[profile?] <dev-haskell/aeson-2.3:=[profile?]
	>=dev-haskell/websockets-0.8:=[profile?] <dev-haskell/websockets-0.14:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples buildexamples) \
		$(cabal_flag rebug rebug)
}
