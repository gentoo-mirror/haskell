# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.1.0.9999
#hackport: flags: -build-tests

CABAL_PN="ChasingBottoms"

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="For testing partial and infinite values"
HOMEPAGE="https://hackage.haskell.org/package/ChasingBottoms"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-haskell/quickcheck-2.10:=[profile?] <dev-haskell/quickcheck-2.15:=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.3:=[profile?]
	>=dev-haskell/syb-0.1.0.2:=[profile?] <dev-haskell/syb-0.8:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-build-tests
}
