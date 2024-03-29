# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Combinators for writing pretty type errors easily"
HOMEPAGE="https://github.com/chshersh/type-errors-pretty"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MPL-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4
	test? ( >=dev-haskell/doctest-0.16
		dev-haskell/glob )
"

src_prepare() {
	default

	cabal_chdeps \
		'doctest ^>= 0.16' 'doctest >= 0.16'
}
