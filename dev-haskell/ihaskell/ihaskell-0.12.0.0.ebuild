# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A Haskell backend kernel for the Jupyter project"
HOMEPAGE="https://github.com/gibiansky/IHaskell"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+hlint"

RDEPEND="
	>=dev-haskell/aeson-1.0:=[profile?]
	>=dev-haskell/base64-bytestring-1.0:=[profile?]
	>=dev-haskell/cmdargs-0.10:=[profile?]
	>=dev-haskell/ghc-parser-0.2.1:=[profile?]
	>=dev-haskell/ghc-paths-0.1:=[profile?]
	dev-haskell/ghc-syntax-highlighter:=[profile?]
	dev-haskell/haskeline:=[profile?]
	>=dev-haskell/http-client-0.4:=[profile?]
	>=dev-haskell/http-client-tls-0.2:=[profile?]
	>=dev-haskell/ipython-kernel-0.11.0.0:=[profile?]
	dev-haskell/parsec:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-haskell/shelly-1.5:=[profile?]
	>=dev-haskell/split-0.2:=[profile?]
	>=dev-haskell/strict-0.3:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-8.4:=[profile?] <dev-lang/ghc-9.11:=[profile?]
	hlint? (
		>=dev-haskell/hlint-1.9:=[profile?]
	)
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? (
		dev-haskell/hspec
		dev-haskell/hspec-contrib
		dev-haskell/hunit
		dev-haskell/raw-strings-qq
		dev-haskell/setenv
	)
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag hlint use-hlint)
}