# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Servant support for lucid"
HOMEPAGE="http://haskell-servant.readthedocs.org/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/http-media-0.6.4:=[profile?] <dev-haskell/http-media-0.9:=[profile?]
	>=dev-haskell/lucid-2.9.8:=[profile?]
	>=dev-haskell/servant-0.17:=[profile?] <dev-haskell/servant-0.19:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( >=dev-haskell/servant-server-0.14 <dev-haskell/servant-server-0.19
		>=dev-haskell/wai-3.0.3.0 <dev-haskell/wai-3.3
		>=dev-haskell/warp-3.0.13.1 <dev-haskell/warp-3.4 )
"

src_prepare() {
	cabal_chdeps \
		'lucid      >=2.9.8   && <2.10' 'lucid >=2.9.8'
	default
}
