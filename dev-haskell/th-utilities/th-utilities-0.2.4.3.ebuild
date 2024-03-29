# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Collection of useful functions for use with Template Haskell"
HOMEPAGE="https://github.com/fpco/th-utilities#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="dev-haskell/primitive:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/th-abstraction-0.4:=[profile?]
	dev-haskell/th-orphans:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/hspec
		dev-haskell/vector )
"
