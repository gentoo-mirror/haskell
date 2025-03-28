# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A library for RDF processing in Haskell"
HOMEPAGE="https://github.com/robstewart57/rdf4h"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
RESTRICT+="test" #tests are hosted externally at https://github.com/w3c/rdf-tests/ and not included in the tarball

RDEPEND=">=dev-haskell/algebraic-graphs-0.5:=[profile?]
	dev-haskell/attoparsec:=[profile?]
	dev-haskell/hashable:=[profile?]
	dev-haskell/html-entities:=[profile?]
	>=dev-haskell/http-conduit-2.2.0:=[profile?]
	dev-haskell/lifted-base:=[profile?]
	dev-haskell/mmorph:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?]
	>=dev-haskell/parsec-3:=[profile?]
	dev-haskell/parsers:=[profile?]
	dev-haskell/selective:=[profile?]
	>=dev-haskell/text-1.2.1.0:=[profile?]
	>=dev-haskell/unordered-containers-0.2.10.0:=[profile?]
	dev-haskell/xeno:=[profile?]
	>=dev-lang/ghc-9.2.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.6.3.0
	test? ( >=dev-haskell/hunit-1.2.2.1
		>=dev-haskell/quickcheck-1.2.0.0
		dev-haskell/safe
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/tasty-quickcheck
		dev-haskell/temporary )
"
