# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999
#hackport: flags: -deverror

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="GHC typechecker plugin for types of kind GHC.TypeLits.Nat"
HOMEPAGE="https://www.clash-lang.org/"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-haskell/ghc-tcplugins-extra-0.3.1:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	test? (
		>=dev-haskell/tasty-0.10
		>=dev-haskell/tasty-hunit-0.9
	)
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-deverror
}
