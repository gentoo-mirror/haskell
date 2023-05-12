# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Implementation of difficult monads made easy with operational semantics"
HOMEPAGE="https://wiki.haskell.org/Operational"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+buildexamples"

RDEPEND=">=dev-lang/ghc-8.4.3:=
	buildexamples? ( >=dev-haskell/random-1:=[profile?] <dev-haskell/random-2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag buildexamples buildexamples)
}
