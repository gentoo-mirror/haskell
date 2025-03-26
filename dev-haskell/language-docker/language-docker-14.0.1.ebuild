# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Dockerfile parser, pretty-printer and embedded DSL"
HOMEPAGE="https://github.com/hadolint/language-docker#readme"

LICENSE="GPL-3+"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'data-default        >=0.8.0  && <0.10' 'data-default >= 0.7.0'
	'data-default-class  >=0.2.0  && <0.4' 'data-default-class >= 0.1.0'
	'megaparsec          >=9.7.0  && <9.9' 'megaparsec >=9.5.0'
	)

RDEPEND=">=dev-haskell/data-default-0.7.0:=[profile?] <dev-haskell/data-default-0.10:=[profile?]
	>=dev-haskell/data-default-class-0.1.0:=[profile?] <dev-haskell/data-default-class-0.4:=[profile?]
	>=dev-haskell/megaparsec-9.5.0:=[profile?] <dev-haskell/megaparsec-9.9:=[profile?]
	>=dev-haskell/prettyprinter-1.7.1:=[profile?] <dev-haskell/prettyprinter-1.9:=[profile?]
	>=dev-haskell/split-0.2.5:=[profile?] <dev-haskell/split-0.4:=[profile?]
	>=dev-haskell/text-2.0.2:=[profile?] <dev-haskell/text-2.2:=[profile?]
	>=dev-lang/ghc-9.4.6:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.8.1.0
	test? ( dev-haskell/hspec
		dev-haskell/hspec-megaparsec
		>=dev-haskell/hunit-1.2
		dev-haskell/quickcheck )
"
