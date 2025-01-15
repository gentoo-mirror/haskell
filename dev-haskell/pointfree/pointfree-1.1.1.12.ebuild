# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Tool for refactoring expressions into pointfree form"
HOMEPAGE="https://hackage.haskell.org/package/pointfree"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/haskell-src-exts-1.20:=[profile?] <dev-haskell/haskell-src-exts-1.24:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/hunit-1.6 <dev-haskell/hunit-1.7
		>=dev-haskell/quickcheck-2.11 <dev-haskell/quickcheck-2.15 )
"

CABAL_CHDEPS=(
	'base >= 4.5 && < 4.20' 'base >= 4.5 && < 5'
	'transformers < 0.7' 'transformers'
)