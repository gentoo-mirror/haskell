# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="IO support for file handles in di-core"
HOMEPAGE="https://github.com/k0001/di"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-haskell/di-core:=[profile?]
	>=dev-lang/ghc-8.10.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
"
