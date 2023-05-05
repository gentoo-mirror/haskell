# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0
#hackport: flags: build-play-tomland:example-play-tomland,build-readme:example-readme

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Bidirectional TOML serialization"
HOMEPAGE="https://github.com/kowainik/tomland"

LICENSE="MPL-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="example-play-tomland example-readme"

RDEPEND="
	>=dev-haskell/hashable-1.3.1.0:=[profile?] <dev-haskell/hashable-1.5:=[profile?]
	>=dev-haskell/megaparsec-7.0.5:=[profile?] <dev-haskell/megaparsec-9.3:=[profile?]
	>=dev-haskell/parser-combinators-1.1.0:=[profile?] <dev-haskell/parser-combinators-1.4:=[profile?]
	>=dev-haskell/unordered-containers-0.2.7:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/validation-selective-0.1.0:=[profile?] <dev-haskell/validation-selective-0.2:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4
	test? (
		>=dev-haskell/hedgehog-1.0.1 <dev-haskell/hedgehog-1.3
		>=dev-haskell/hspec-2.7.1 <dev-haskell/hspec-2.11
		>=dev-haskell/hspec-hedgehog-0.0.1 <dev-haskell/hspec-hedgehog-0.1
		>=dev-haskell/hspec-megaparsec-2.0.0 <dev-haskell/hspec-megaparsec-2.3.0
	)
	example-readme? (
		dev-haskell/markdown-unlit
	)
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag example-play-tomland build-play-tomland) \
		$(cabal_flag example-readme build-readme)
}
