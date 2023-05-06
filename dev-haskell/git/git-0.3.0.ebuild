# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.2

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Git operations in haskell"
HOMEPAGE="https://github.com/vincenthz/hs-git"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-haskell/basement:=[profile?]
	>=dev-haskell/cryptonite-0.22:=[profile?]
	>=dev-haskell/hourglass-0.2:=[profile?]
	>=dev-haskell/memory-0.13:=[profile?]
	dev-haskell/random:=[profile?]
	dev-haskell/system-fileio:=[profile?]
	dev-haskell/system-filepath:=[profile?]
	dev-haskell/unix-compat:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	dev-haskell/vector:=[profile?]
	dev-haskell/zlib:=[profile?]
	>=dev-haskell/zlib-bindings-0.1:=[profile?] <dev-haskell/zlib-bindings-0.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/bytedump-1.0
		dev-haskell/tasty
		dev-haskell/tasty-quickcheck )
"

PATCHES=( "${FILESDIR}/${P}-monadfail.patch" )
