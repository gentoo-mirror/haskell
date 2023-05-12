# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

# NOTE: Building this package's tests use a lot of RAM. If you run out,
# consider setting "--ghc-option=-O0" in CABAL_EXTRA_CONFIGURE_FLAGS for this
# package's environment, setting "-j1" for this package, or just disabling the
# "test" USE flag/FEATURES for this package.
CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Library that contains generators, properties and tests for Massiv Array Library"
HOMEPAGE="https://github.com/lehins/massiv"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="dev-haskell/data-default-class:=[profile?]
	dev-haskell/exceptions:=[profile?]
	dev-haskell/hspec:=[profile?]
	>=dev-haskell/massiv-0.5.9:=[profile?]
	dev-haskell/primitive:=[profile?]
	dev-haskell/quickcheck:2=[profile?]
	dev-haskell/scheduler:=[profile?]
	dev-haskell/unliftio:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/data-default
		dev-haskell/genvalidity-hspec
		>=dev-haskell/massiv-0.6
		dev-haskell/mwc-random )
"
