# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0
#hackport: flags: -deverror

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Utilities for writing GHC type-checker plugins"
HOMEPAGE="https://github.com/clash-lang/ghc-tcplugins-extra#readme"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-deverror
}
