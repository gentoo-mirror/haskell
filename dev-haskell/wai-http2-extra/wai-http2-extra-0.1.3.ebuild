# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="WAI utilities for HTTP/2"
HOMEPAGE="https://github.com/yesodweb/wai"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-haskell/http-types:=[profile?]
	dev-haskell/psqueues:=[profile?]
	dev-haskell/wai:=[profile?]
	dev-haskell/warp:=[profile?]
	dev-haskell/word8:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/doctest-0.10.1 )
"
