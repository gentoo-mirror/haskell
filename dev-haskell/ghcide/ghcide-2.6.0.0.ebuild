# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ekg-json is unmaintained which is why we have the ekg flag disabled

# ebuild generated by hackport 0.8.4.0.9999
#hackport: flags: -ghc-patched-unboxed-bytecode,-ekg,-pedantic

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="The core of an IDE"
HOMEPAGE="https://github.com/haskell/haskell-language-server/tree/master/ghcide#readme"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+executable +test-exe"

RESTRICT="test" # Flaky tests

CABAL_TEST_REQUIRED_BINS=(
	ghcide
	ghcide-test-preprocessor
)

RDEPEND="
	dev-haskell/aeson:=[profile?]
	dev-haskell/async:=[profile?]
	>=dev-haskell/base16-bytestring-0.1.1:=[profile?] <dev-haskell/base16-bytestring-1.1:=[profile?]
	dev-haskell/case-insensitive:=[profile?]
	dev-haskell/co-log-core:=[profile?]
	>=dev-haskell/cryptohash-sha1-0.11.100:=[profile?] <dev-haskell/cryptohash-sha1-0.12:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/dependent-map:=[profile?]
	dev-haskell/dependent-sum:=[profile?]
	>=dev-haskell/diff-0.4.0:=[profile?] <dev-haskell/diff-0.5:=[profile?]
	dev-haskell/dlist:=[profile?]
	dev-haskell/enummapset:=[profile?]
	>=dev-haskell/extra-1.7.14:=[profile?]
	dev-haskell/fingertree:=[profile?]
	>=dev-haskell/focus-1.0.3.2:=[profile?]
	>=dev-haskell/ghc-check-0.5.0.8:=[profile?]
	dev-haskell/ghc-paths:=[profile?]
	dev-haskell/ghc-trace-events:=[profile?]
	dev-haskell/glob:=[profile?]
	>=dev-haskell/haddock-library-1.8:=[profile?] <dev-haskell/haddock-library-1.12:=[profile?]
	dev-haskell/hashable:=[profile?]
	~dev-haskell/hie-bios-0.13.1:=[profile?]
	>=dev-haskell/hie-compat-0.3.0.0:=[profile?] <dev-haskell/hie-compat-0.4:=[profile?]
	>=dev-haskell/hiedb-0.5.0.1:=[profile?] <dev-haskell/hiedb-0.6:=[profile?]
	~dev-haskell/hls-graph-2.6.0.0:=[profile?]
	~dev-haskell/hls-plugin-api-2.6.0.0:=[profile?]
	>=dev-haskell/implicit-hie-0.1.4.0:=[profile?] <dev-haskell/implicit-hie-0.1.5:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/list-t:=[profile?]
	>=dev-haskell/lsp-2.3.0.0:=[profile?] <dev-haskell/lsp-2.4:=[profile?]
	>=dev-haskell/lsp-types-2.1:=[profile?] <dev-haskell/lsp-types-2.1.1
	>=dev-haskell/opentelemetry-0.6.1:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	dev-haskell/parallel:=[profile?]
	>=dev-haskell/prettyprinter-1.7:=[profile?]
	dev-haskell/prettyprinter-ansi-terminal:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-haskell/regex-tdfa-1.3.1.0:=[profile?]
	dev-haskell/row-types:=[profile?]
	dev-haskell/safe-exceptions:=[profile?]
	dev-haskell/sorted-list:=[profile?]
	dev-haskell/sqlite-simple:=[profile?]
	dev-haskell/stm-containers:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/text-rope:=[profile?]
	>=dev-haskell/unliftio-0.2.6:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	>=dev-haskell/unordered-containers-0.2.10.0:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	executable? (
		dev-haskell/gitrev:=[profile?]
	)
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? (
		dev-haskell/fuzzy
		dev-haskell/ghc-typelits-knownnat
		dev-haskell/hls-plugin-api
		>=dev-haskell/lsp-test-0.16.0.0 <dev-haskell/lsp-test-0.17
		dev-haskell/monoid-subclasses
		dev-haskell/network-uri
		dev-haskell/quickcheck
		dev-haskell/record-dot-preprocessor
		dev-haskell/record-hasfield
		>=dev-haskell/regex-tdfa-1.3.1 <dev-haskell/regex-tdfa-1.4
		dev-haskell/tasty
		dev-haskell/tasty-expected-failure
		>=dev-haskell/tasty-hunit-0.10
		dev-haskell/tasty-quickcheck
		dev-haskell/tasty-rerun
		dev-util/shake
	)
"

src_configure() {
	local flags=(
		--flag=-ekg
		--flag=-ghc-patched-unboxed-bytecode
		--flag=-pedantic
	)

	if use executable || use test; then
		flags+=( --flag=executable )
	else
		flags+=( --flag=-executable )
	fi

	if use test-exe || use test; then
		flags+=( --flag=test-exe )
	else
		flags+=( --flag=-test-exe )
	fi

	haskell-cabal_src_configure "${flags[@]}"
}

src_install() {
	local install_components=(
		lib:$PN
	)
	use executable && install_components+=( "exe:ghcide" )
	use test-exe && install_components+=( "exe:ghcide-test-preprocessor" )

	haskell-cabal_src_install "${install_components[@]}"
}
