# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Parsing and pretty printing of Roman numerals"
HOMEPAGE="https://github.com/roelvandijk/roman-numerals"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'bytestring           >= 0.9.1 && < 0.11' 'bytestring >= 0.9.1'
	'text                 >= 0.11  && < 1.3' 'text >= 0.11'
)

RDEPEND=">=dev-haskell/base-unicode-symbols-0.1.1:=[profile?] <dev-haskell/base-unicode-symbols-0.3:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"
