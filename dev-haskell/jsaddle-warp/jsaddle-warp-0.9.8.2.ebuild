# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite"
inherit haskell-cabal

DESCRIPTION="Interface for JavaScript that works with GHCJS and GHC"
HOMEPAGE="https://hackage.haskell.org/package/jsaddle-warp"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RESTRICT=test # missing files?

RDEPEND=">=dev-haskell/aeson-0.8.0.2:=[profile?] <dev-haskell/aeson-2.1:=[profile?]
	>=dev-haskell/foreign-store-0.2:=[profile?] <dev-haskell/foreign-store-0.3:=[profile?]
	>=dev-haskell/http-types-0.8.6:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/jsaddle-0.9.4.0:=[profile?] <dev-haskell/jsaddle-0.10:=[profile?]
	>=dev-haskell/stm-2.4.4:=[profile?] <dev-haskell/stm-2.6:=[profile?]
	>=dev-haskell/wai-3.0.3.0:=[profile?] <dev-haskell/wai-3.3:=[profile?]
	>=dev-haskell/wai-websockets-3.0.0.6:=[profile?] <dev-haskell/wai-websockets-3.1:=[profile?]
	>=dev-haskell/warp-3.1.2:=[profile?] <dev-haskell/warp-3.4:=[profile?]
	>=dev-haskell/websockets-0.9.5.0:=[profile?] <dev-haskell/websockets-0.13:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1"
# 	test? ( >=dev-haskell/doctest-0.10.1 <dev-haskell/doctest-0.19
# 		dev-haskell/exceptions
# 		dev-haskell/lens
# 		dev-haskell/network
# 		dev-haskell/primitive
# 		dev-haskell/quickcheck
# 		dev-haskell/random
# 		dev-haskell/ref-tf
# 		dev-haskell/unliftio-core
# 		>=dev-haskell/webdriver-0.8.4 <dev-haskell/webdriver-0.10 )
# "
