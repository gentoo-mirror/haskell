# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Extract and apply patches to JSON documents"
HOMEPAGE="https://github.com/clintonmead/aeson-diff"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

GHC_BOOTSTRAP_PACKAGES=(
	'cabal-doctest'
)

RDEPEND=">=dev-haskell/aeson-2.0.3:=[profile?]
	dev-haskell/edit-distance-vector:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	dev-haskell/scientific:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/vector:=[profile?]
	dev-haskell/yaml:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0 <dev-haskell/cabal-4
	>=dev-haskell/cabal-doctest-1 <dev-haskell/cabal-doctest-1.1
	test? ( >=dev-haskell/doctest-0.18.2
		dev-haskell/glob
		dev-haskell/quickcheck )
"
