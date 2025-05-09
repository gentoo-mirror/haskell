# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="small framework for performance measurement and analysis"
HOMEPAGE="https://github.com/vincenthz/hs-gauge"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+analysis"

RDEPEND=">=dev-haskell/basement-0.0.4:=[profile?]
	>=dev-haskell/vector-0.7.1:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/foundation )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag analysis analysis)
}
