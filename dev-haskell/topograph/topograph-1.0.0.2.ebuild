# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.1.9999

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Directed acyclic graphs"
HOMEPAGE="https://github.com/phadej/topograph"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-haskell/base-compat-0.10.5:=[profile?] <dev-haskell/base-compat-0.14:=[profile?]
	>=dev-haskell/base-orphans-0.8:=[profile?] <dev-haskell/base-orphans-0.10:=[profile?]
	>=dev-haskell/vector-0.12:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"
