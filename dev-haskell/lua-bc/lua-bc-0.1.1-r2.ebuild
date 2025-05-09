# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Lua bytecode parser"
HOMEPAGE="https://github.com/GaloisInc/lua-bc"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/data-binary-ieee754-0.4:=[profile?] <dev-haskell/data-binary-ieee754-0.5:=[profile?]
	>=dev-haskell/text-1.2:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

PATCHES=(
	"${FILESDIR}"/${P}-ghc84.patch
)

CABAL_CHDEPS=(
		'vector                   >=0.10 && <0.12' 'vector                   >=0.10'
		'base                     >=4.8  && <4.10' 'base                     >=4.8'
		'containers               >=0.5  && <0.6'  'containers               >=0.5'
		'bytestring               >=0.10 && <0.11' 'bytestring >=0.10'
		'text                     >=1.2  && <1.3' 'text >=1.2'
)
