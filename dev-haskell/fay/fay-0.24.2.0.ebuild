# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A compiler for Fay, a Haskell subset that compiles to JavaScript"
HOMEPAGE="https://github.com/faylang/fay/wiki"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Tests currently fail due to a missing `fay-base` dependency. This was taken
# out by upstream to resolve a circular-dependency issue. See issue 473 upstream
# for more information and steps being taken to resolve this.
RESTRICT="test"

RDEPEND=">dev-haskell/aeson-0.6:=[profile?] <dev-haskell/aeson-1.6:=[profile?]
	>=dev-haskell/base-compat-0.10:=[profile?] <dev-haskell/base-compat-0.12:=[profile?]
	>=dev-haskell/data-default-0.2:=[profile?] <dev-haskell/data-default-0.8:=[profile?]
	>=dev-haskell/data-lens-light-0.1:=[profile?] <dev-haskell/data-lens-light-0.2:=[profile?]
	>=dev-haskell/ghc-paths-0.1:=[profile?] <dev-haskell/ghc-paths-0.2:=[profile?]
	>=dev-haskell/haskell-src-exts-1.20:=[profile?]
	>=dev-haskell/language-ecmascript-0.15:=[profile?] <dev-haskell/language-ecmascript-0.20:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/mtl-compat-0.1:=[profile?] <dev-haskell/mtl-compat-0.3:=[profile?]
	>=dev-haskell/optparse-applicative-0.11:=[profile?] <dev-haskell/optparse-applicative-0.16:=[profile?]
	>=dev-haskell/safe-0.2:=[profile?] <dev-haskell/safe-0.4:=[profile?]
	<dev-haskell/shakespeare-2.1:=[profile?]
	>=dev-haskell/sourcemap-0.1:=[profile?] <dev-haskell/sourcemap-0.2:=[profile?]
	>=dev-haskell/split-0.1:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/spoon-0.1:=[profile?] <dev-haskell/spoon-0.4:=[profile?]
	>=dev-haskell/syb-0.3:=[profile?] <dev-haskell/syb-0.8:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-compat-0.3:=[profile?] <dev-haskell/transformers-compat-0.7:=[profile?]
	>=dev-haskell/traverse-with-class-1.0:=[profile?] <dev-haskell/traverse-with-class-1.1:=[profile?]
	>=dev-haskell/uniplate-1.6.11:=[profile?] <dev-haskell/uniplate-1.7:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/utf8-string-0.1:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	<dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-8.0.1:=
	test? ( dev-haskell/attoparsec:=[profile?]
		>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.3:=[profile?]
		>=dev-haskell/tasty-0.9:=[profile?] <dev-haskell/tasty-1.5:=[profile?]
		>=dev-haskell/tasty-hunit-0.8:=[profile?] <dev-haskell/tasty-hunit-0.11:=[profile?]
		>=dev-haskell/tasty-th-0.1:=[profile?] <dev-haskell/tasty-th-0.2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag test)
}

src_test() {
	local fay_tests=(
		"${S}"/dist/build/fay-tests/fay-tests
		--num-threads=$(nproc)
		-random 20
	)
	export LD_LIBRARY_PATH="${S}/dist/build${LD_LIBRARY_PATH+:}:${LD_LIBRARY_PATH}"
	echo "${fay_tests[@]}"
	"${fay_tests[@]}" || die "fay-tests failed somehow"
}
