# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.2.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="freetype2 bindings"
HOMEPAGE="https://github.com/haskell-gi/haskell-gi"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

GHC_BOOTSTRAP_PACKAGES=(
	haskell-gi
)

RDEPEND="
	>=dev-haskell/haskell-gi-0.26:=[profile?] <dev-haskell/haskell-gi-0.27:=[profile?]
	>=dev-haskell/haskell-gi-base-0.26:=[profile?] <dev-haskell/haskell-gi-base-0.27:=[profile?]
	<dev-haskell/haskell-gi-overloading-1.1:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
	media-libs/freetype:2
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	virtual/pkgconfig
"
