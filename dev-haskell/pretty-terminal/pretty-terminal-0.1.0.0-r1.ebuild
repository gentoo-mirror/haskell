# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Styling and coloring terminal output with ANSI escape sequences"
HOMEPAGE="https://github.com/loganmac/pretty-terminal#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-haskell/text:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"

src_prepare() {
	default

	# Rename ambiguous binary. Upstream proposal: https://github.com/loganmac/pretty-terminal/pull/3
	cabal_chdeps \
		'executable example' 'executable pretty-terminal-example'
}
