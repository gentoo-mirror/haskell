# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999
#hackport: flags: -ghc-lib

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="HIE files for GHC 8.8 and other HIE file backports"
HOMEPAGE="https://github.com/haskell/haskell-language-server/tree/master/hie-compat#readme"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=('base < 4.20' 'base < 4.22')

RDEPEND=">=dev-lang/ghc-8.10:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-ghc-lib
}
