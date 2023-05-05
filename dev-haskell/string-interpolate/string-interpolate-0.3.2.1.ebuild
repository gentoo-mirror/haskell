# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell string/text/bytestring interpolation that just works"
HOMEPAGE="https://gitlab.com/williamyaoh/string-interpolate/blob/master/README.md"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="bytestring-builder extended-benchmarks text-builder"

RDEPEND="<dev-haskell/haskell-src-exts-1.24:=[profile?]
	<dev-haskell/haskell-src-meta-0.9:=[profile?]
	<dev-haskell/split-0.3:=[profile?]
	<dev-haskell/text-2.1:=[profile?]
	<dev-haskell/text-conversions-0.4:=[profile?]
	<dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-lang/ghc-8.8.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	test? ( >=dev-haskell/hspec-2 <dev-haskell/hspec-3
		>=dev-haskell/hspec-core-2 <dev-haskell/hspec-core-3
		<dev-haskell/quickcheck-2.15
		<dev-haskell/quickcheck-instances-0.4
		<dev-haskell/quickcheck-text-0.2
		<dev-haskell/quickcheck-unicode-1.1
		<dev-haskell/unordered-containers-0.3 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag bytestring-builder bytestring-builder) \
		$(cabal_flag extended-benchmarks extended-benchmarks) \
		$(cabal_flag text-builder text-builder)
}
