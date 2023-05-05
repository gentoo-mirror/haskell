# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Contravariant functors"
HOMEPAGE="https://github.com/ekmett/contravariant/"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+semigroups +statevar +tagged"

RDEPEND=">=dev-lang/ghc-8.4.3:=[profile?]
	statevar? ( >=dev-haskell/statevar-1.2.1:=[profile?] <dev-haskell/statevar-1.3:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag semigroups semigroups) \
		$(cabal_flag statevar statevar) \
		$(cabal_flag tagged tagged)
}
