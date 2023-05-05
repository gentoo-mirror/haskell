# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Optics as an abstract interface: core definitions"
HOMEPAGE="https://hackage.haskell.org/package/optics-core"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="explicit-generic-labels"

RDEPEND=">=dev-haskell/indexed-profunctors-0.1:=[profile?] <dev-haskell/indexed-profunctors-0.2:=[profile?]
	>=dev-haskell/indexed-traversable-0.1:=[profile?] <dev-haskell/indexed-traversable-0.2:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag explicit-generic-labels explicit-generic-labels)
}
