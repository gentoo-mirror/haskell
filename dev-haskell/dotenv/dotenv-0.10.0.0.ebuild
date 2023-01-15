# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999
#hackport: flags: -dev,-static

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Loads environment variables from dotenv files"
HOMEPAGE="https://github.com/stackbuilders/dotenv-hs"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/base-compat-0.4:=[profile?]
	>=dev-haskell/megaparsec-7.0.1:=[profile?] <dev-haskell/megaparsec-10.0:=[profile?]
	>=dev-haskell/optparse-applicative-0.11:=[profile?] <dev-haskell/optparse-applicative-0.18:=[profile?]
	>=dev-haskell/process-1.6.3.0:=[profile?] <dev-haskell/process-1.7:=[profile?]
	>=dev-haskell/shellwords-0.1.3.0:=[profile?]
	>=dev-lang/ghc-8.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
	test? ( dev-haskell/hspec
		>=dev-haskell/hspec-megaparsec-2.0 <dev-haskell/hspec-megaparsec-3.0 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-dev \
		--flag=-static
}