# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999
#hackport: flags: -test-parsing

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Bindings to Graphviz for graph visualisation"
HOMEPAGE="https://gitlab.com/daniel-casanueva/haskell/graphviz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/colour-2.3:=[profile?] <dev-haskell/colour-2.4:=[profile?]
	>=dev-haskell/dlist-0.5:=[profile?] <dev-haskell/dlist-1.1:=[profile?]
	>=dev-haskell/fgl-5.4:=[profile?] <dev-haskell/fgl-5.9:=[profile?]
	>=dev-haskell/polyparse-1.9:=[profile?] <dev-haskell/polyparse-1.14:=[profile?]
	>=dev-haskell/temporary-1.1:=[profile?] <dev-haskell/temporary-1.4:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/wl-pprint-text-1.2:=[profile?] <dev-haskell/wl-pprint-text-1.3:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/fgl-5.5.0.0
		>=dev-haskell/fgl-arbitrary-0.2 <dev-haskell/fgl-arbitrary-0.3
		>=dev-haskell/hspec-2.1 <dev-haskell/hspec-3
		>=dev-haskell/quickcheck-2.3 <dev-haskell/quickcheck-2.15 )
"
BDEPEND="
	test? (
		media-gfx/graphviz
	)
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-test-parsing
}
