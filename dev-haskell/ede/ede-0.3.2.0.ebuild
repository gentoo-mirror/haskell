# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Templating language with similar syntax and features to Liquid or Jinja2"
HOMEPAGE="https://github.com/brendanhay/ede"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MPL-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # missing files

RDEPEND=">=dev-haskell/aeson-0.8:=[profile?]
	dev-haskell/attoparsec:=[profile?]
	>=dev-haskell/comonad-4.2:=[profile?]
	>=dev-haskell/free-4.8:=[profile?]
	>=dev-haskell/lens-4.0:=[profile?]
	>=dev-haskell/mtl-2.1.3.1:=[profile?]
	>=dev-haskell/optparse-applicative-0.11:=[profile?]
	>=dev-haskell/parsers-0.12.1.1:=[profile?]
	>=dev-haskell/prettyprinter-1.6:=[profile?]
	>=dev-haskell/prettyprinter-ansi-terminal-1.1:=[profile?]
	>=dev-haskell/scientific-0.3.1:=[profile?]
	>=dev-haskell/text-1.2:=[profile?]
	>=dev-haskell/text-manipulate-0.1.2:=[profile?]
	>=dev-haskell/trifecta-2.1:=[profile?]
	>=dev-haskell/unordered-containers-0.2.3:=[profile?]
	>=dev-haskell/vector-0.7.1:=[profile?]
	>=dev-lang/ghc-8.6.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? ( dev-haskell/bifunctors
		dev-haskell/tasty
		dev-haskell/tasty-golden )
"
