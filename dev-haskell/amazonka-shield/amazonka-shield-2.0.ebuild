# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Amazon Shield SDK"
HOMEPAGE="https://github.com/brendanhay/amazonka"

LICENSE="MPL-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'base           >=4.12 && <4.19' 'base >= 4.12'
	)

PATCHES=(
	"${FILESDIR}"/${P}-duplicate-record-fields.patch
	)

RDEPEND=">=dev-haskell/amazonka-core-2.0:=[profile?] <dev-haskell/amazonka-core-2.1:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/amazonka-test-2.0 <dev-haskell/amazonka-test-2.1
		dev-haskell/case-insensitive
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/text
		dev-haskell/unordered-containers )
"
