# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell bindings to libpqtypes"
HOMEPAGE="https://github.com/scrive/hpqtypes"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RESTRICT=test # requires postgresql instance

RDEPEND=">=dev-db/postgresql-7
	>=dev-haskell/aeson-1.0:=[profile?]
	>=dev-haskell/async-2.1.1.1:=[profile?]
	>=dev-haskell/lifted-base-0.2:=[profile?]
	>=dev-haskell/monad-control-0.3:=[profile?]
	>=dev-haskell/resource-pool-0.2:=[profile?]
	>=dev-haskell/semigroups-0.16:=[profile?]
	>=dev-haskell/text-show-2:=[profile?]
	>=dev-haskell/transformers-base-0.4:=[profile?]
	>=dev-haskell/uuid-types-1.0.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?]
	>=dev-lang/ghc-8.10.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0 <dev-haskell/cabal-3.7
"
