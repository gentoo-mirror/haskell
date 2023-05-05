# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Trial Data Structure"
HOMEPAGE="https://github.com/kowainik/trial"

LICENSE="MPL-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

GHC_BOOTSTRAP_PACKAGES=(
	cabal-doctest
)

PATCHES=(
	"${FILESDIR}/${PN}-0.0.0.0-cabal-doctest.patch"
)

CABAL_CHDEPS=(
	'base >= 4.12.0.0 && < 4.15' 'base >= 4.12.0.0'
	'dlist ^>= 0.8.0.8' 'dlist >= 0.8.0.8'
	'doctest ^>= 0.16' 'doctest >= 0.16'
	'hspec ^>= 2.7' 'hspec >= 2.7'
	'splitmix < 0.0.5' 'splitmix'
	'hedgehog ^>= 1.0' 'hedgehog >= 1.0'
)

RDEPEND="
	>=dev-haskell/colourista-0.1.0.0:=[profile?] <dev-haskell/colourista-0.2:=[profile?]
	>=dev-haskell/dlist-0.8.0.8:=[profile?]
	>=dev-lang/ghc-8.6.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	dev-haskell/cabal-doctest
	test? (
		>=dev-haskell/doctest-0.16
		>=dev-haskell/hedgehog-1.0
		>=dev-haskell/hspec-2.7
		>=dev-haskell/hspec-hedgehog-0.0.1.1 <dev-haskell/hspec-hedgehog-0.1
		dev-haskell/splitmix
	)
"
