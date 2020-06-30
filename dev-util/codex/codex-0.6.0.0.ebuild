# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A ctags file generator for cabal project dependencies"
HOMEPAGE="https://github.com/aloiscochard/codex"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/ascii-progress-0.3:=[profile?]
	>=dev-haskell/cabal-3.0:=[profile?] <dev-haskell/cabal-3.1:=[profile?]
	>=dev-haskell/conduit-1.3.0:=[profile?]
	>=dev-haskell/cryptonite-0.21:=[profile?] <dev-haskell/cryptonite-0.27:=[profile?]
	>=dev-haskell/hackage-db-2:=[profile?] <dev-haskell/hackage-db-3:=[profile?]
	>=dev-haskell/http-client-0.4:=[profile?] <=dev-haskell/http-client-0.6.5:=[profile?]
	dev-haskell/http-client-tls:=[profile?]
	>=dev-haskell/memory-0.13:=[profile?] <dev-haskell/memory-0.16:=[profile?]
	>=dev-haskell/network-2.6:=[profile?] <dev-haskell/network-3.2:=[profile?]
	>=dev-haskell/tar-0.4.0.1:=[profile?] <dev-haskell/tar-0.6:=[profile?]
	>=dev-haskell/text-1.1.1.3:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/yaml-0.8.8.3:=[profile?] <dev-haskell/yaml-0.12:=[profile?]
	>=dev-haskell/zlib-0.5.4.1:=[profile?] <dev-haskell/zlib-0.7:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
