# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.4.2.9999

CABAL_FEATURES="lib profile" # empty package
inherit haskell-cabal

DESCRIPTION="WAI support for server-sent events (deprecated)"
HOMEPAGE="http://www.yesodweb.com/book/web-application-interface"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/wai-3.0:=[profile?]
	>=dev-lang/ghc-7.4.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"
