# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Platform information used by GHC and friends"
HOMEPAGE="https://gitlab.haskell.org/ghc/ghc/-/tree/master/libraries/ghc-platform#readme"
SRC_URI="https://downloads.haskell.org/ghc/${PV/_/-}/ghc-${PV}-src.tar.xz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

S="${WORKDIR}/ghc-${PV}/libraries/${CABAL_PN}"
CABAL_FILE="${S}/${CABAL_PN}.cabal"

RDEPEND=">=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"

CABAL_CORE_LIB_GHC_PV="9.12.1"
