# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="HsSyck"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Fast, lightweight YAML loader and dumper"
HOMEPAGE="https://hackage.haskell.org/package/HsSyck"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="dev-haskell/hashtables:=[profile?]
	dev-haskell/syb:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

S="${WORKDIR}/${MY_P}"
