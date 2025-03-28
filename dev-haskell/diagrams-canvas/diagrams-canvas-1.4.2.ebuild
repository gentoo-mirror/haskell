# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="HTML5 canvas backend for diagrams drawing EDSL"
HOMEPAGE="https://diagrams.github.io/"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'data-default >= 0.8 && < 0.9' 'data-default >= 0.7'
)

RDEPEND=">=dev-haskell/blank-canvas-0.5:=[profile?] <dev-haskell/blank-canvas-0.8:=[profile?]
	>=dev-haskell/cmdargs-0.6:=[profile?] <dev-haskell/cmdargs-0.11:=[profile?]
	>=dev-haskell/data-default-0.7:=[profile?]
	>=dev-haskell/diagrams-core-1.3:=[profile?] <dev-haskell/diagrams-core-1.6:=[profile?]
	>=dev-haskell/diagrams-lib-1.3:=[profile?] <dev-haskell/diagrams-lib-1.5:=[profile?]
	>=dev-haskell/lens-4.0:=[profile?] <dev-haskell/lens-5.4:=[profile?]
	>=dev-haskell/numinstances-1.0:=[profile?] <dev-haskell/numinstances-1.5:=[profile?]
	>=dev-haskell/optparse-applicative-0.13:=[profile?] <dev-haskell/optparse-applicative-0.19:=[profile?]
	>=dev-haskell/statestack-0.2:=[profile?] <dev-haskell/statestack-0.4:=[profile?]
	>=dev-haskell/text-1.0:=[profile?] <dev-haskell/text-2.2:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"
