# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Just like monad-control, except less efficient, and the monadic state terms are all * -> *"
HOMEPAGE="https://github.com/athanclark/monad-control#readme"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

CABAL_CHDEPS=(
	'transformers-compat  >= 0.3   && < 0.7' 'transformers-compat  >= 0.3'
)

RDEPEND="
	>=dev-haskell/stm-2.3:=[profile?] <dev-haskell/stm-3:=[profile?]
	>=dev-haskell/transformers-base-0.4.4:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-haskell/transformers-compat-0.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
