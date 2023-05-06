# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Foundation for libraries generated by haskell-gi"
HOMEPAGE="https://github.com/haskell-gi/haskell-gi"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/text-1.0:=[profile?]
	>=dev-lang/ghc-8.8.1:=[profile?]
	dev-libs/glib:2
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"
BDEPEND="virtual/pkgconfig
"
