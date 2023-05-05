# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Structured logging solution (base package)"
HOMEPAGE="https://github.com/scrive/log"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

CABAL_CHDEPS=(
	'mmorph >=1.0.9 && <1.2' 'mmorph >=1.0.9'
)

RDEPEND=">=dev-haskell/aeson-1.0:=[profile?]
	>=dev-haskell/aeson-pretty-0.8.2:=[profile?]
	>=dev-haskell/mmorph-1.0.9:=[profile?]
	>=dev-haskell/monad-control-1.0.3:=[profile?]
	dev-haskell/semigroups:=[profile?]
	>=dev-haskell/stm-2.4:=[profile?]
	dev-haskell/transformers-base:=[profile?]
	>=dev-haskell/unliftio-core-0.1.2.0:=[profile?] <dev-haskell/unliftio-core-0.3:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.10.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
"
