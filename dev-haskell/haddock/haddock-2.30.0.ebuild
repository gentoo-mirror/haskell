# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0
#hackport: flags: -in-ghc-tree

CABAL_FEATURES="" # test-suite
inherit haskell-cabal

RESTRICT="test" # Requires deprecated/buggy haddock-test package

DESCRIPTION="A documentation-generation tool for Haskell libraries"
HOMEPAGE="https://www.haskell.org/haddock/"

GHC_BRANCH_COMMIT="daf659b6e3c8f2a84100fbee797cd9d457c00df5" # ghc-9.12.1-release

SRC_URI="https://gitlab.haskell.org/ghc/ghc/-/archive/${GHC_BRANCH_COMMIT}.tar.gz?path=utils/haddock -> ${P}.tar.gz"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	~dev-haskell/haddock-api-2.30.0:=
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"
#	test? (
#		~dev-haskell/haddock-test-0.0.1
#	)

src_configure() {
	haskell-cabal_src_configure \
		--flag=-in-ghc-tree
}

src_unpack() {
	default
	cd "${WORKDIR}" || die
	ln -s "ghc-${GHC_BRANCH_COMMIT}-utils-haddock/utils/haddock" "${P}" || die
}
