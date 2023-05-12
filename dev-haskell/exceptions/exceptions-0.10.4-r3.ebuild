# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_HACKAGE_REVISION=3

# Disable test suite on bundled packages (haskell-cabal.eclass won't allow them
# to be rebuilt because of CABAL_CORE_LIB_GHC_PV)
CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite
inherit haskell-cabal
RESTRICT="test"

DESCRIPTION="Extensible optionally-pure exceptions"
HOMEPAGE="https://github.com/ekmett/exceptions/"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-lang/ghc-8.10.6:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
#	test? (
#		>=dev-haskell/quickcheck-2.5 <dev-haskell/quickcheck-2.15
#		>=dev-haskell/test-framework-0.8 <dev-haskell/test-framework-0.9
#		>=dev-haskell/test-framework-hunit-0.3 <dev-haskell/test-framework-hunit-0.4
#		>=dev-haskell/test-framework-quickcheck2-0.3 <dev-haskell/test-framework-quickcheck2-0.4
#	)

CABAL_CORE_LIB_GHC_PV="8.10.6 8.10.7 9.0.2 9.2.4 9.2.5 9.2.6 9.2.7"
