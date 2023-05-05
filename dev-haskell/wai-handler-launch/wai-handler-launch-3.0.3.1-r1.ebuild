# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Launch a web app in the default browser"
HOMEPAGE="https://hackage.haskell.org/package/wai-handler-launch"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-haskell/async:=[profile?]
	>=dev-haskell/http-types-0.7:=[profile?]
	|| ( dev-lang/ghc ( >=dev-haskell/process-1.0[profile?] <dev-haskell/process-1.7[profile?] ) )
	>=dev-haskell/streaming-commons-0.2:=[profile?]
	>=dev-haskell/wai-3.0:=[profile?] <dev-haskell/wai-3.3:=[profile?]
	>=dev-haskell/warp-3.0:=[profile?] <dev-haskell/warp-3.4:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
