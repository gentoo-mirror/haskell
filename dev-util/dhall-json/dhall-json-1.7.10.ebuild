# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Convert between Dhall and JSON or YAML"
HOMEPAGE="https://dhall-lang.org
	https://hackage.haskell.org/package/dhall-json"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/aeson-1.4.6.0:=[profile?] <dev-haskell/aeson-2.1:=[profile?]
	>=dev-haskell/aeson-pretty-0.8.5:=[profile?] <dev-haskell/aeson-pretty-0.9:=[profile?]
	>=dev-haskell/aeson-yaml-1.1.0:=[profile?] <dev-haskell/aeson-yaml-1.2:=[profile?]
	>=dev-haskell/ansi-terminal-0.6.3.1:=[profile?] <dev-haskell/ansi-terminal-0.12:=[profile?]
	>=dev-haskell/lens-family-core-1.0.0:=[profile?] <dev-haskell/lens-family-core-2.2:=[profile?]
	>=dev-haskell/optparse-applicative-0.14.0.0:=[profile?] <dev-haskell/optparse-applicative-0.18:=[profile?]
	>=dev-haskell/prettyprinter-1.7.0:=[profile?] <dev-haskell/prettyprinter-1.8:=[profile?]
	>=dev-haskell/prettyprinter-ansi-terminal-1.1.1:=[profile?] <dev-haskell/prettyprinter-ansi-terminal-1.2:=[profile?]
	>=dev-haskell/scientific-0.3.0.0:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	<dev-haskell/unordered-containers-0.3:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/dhall-1.41.0:=[profile?] <dev-lang/dhall-1.42:=[profile?]
	>=dev-lang/ghc-8.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
	test? ( <dev-haskell/tasty-1.5
		>=dev-haskell/tasty-hunit-0.2
		>=dev-haskell/tasty-silver-3.0 )
"
