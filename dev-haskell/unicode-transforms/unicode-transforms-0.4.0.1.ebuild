# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.2.2
#hackport: flags: -dev,-has-icu,-has-llvm,-bench-show,-gauge

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Unicode normalization"
HOMEPAGE="https://github.com/composewell/unicode-transforms"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/unicode-data-0.2:=[profile?] <dev-haskell/unicode-data-0.4:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/hspec-2.0 <dev-haskell/hspec-3
		>=dev-haskell/quickcheck-2.1 <dev-haskell/quickcheck-2.15
		>=dev-haskell/split-0.2 <dev-haskell/split-0.3 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-dev \
		--flag=-has-icu \
		--flag=-has-llvm \
		--flag=-bench-show \
		--flag=-gauge
}
