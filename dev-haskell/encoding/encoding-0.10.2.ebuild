# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A library for various character encodings"
HOMEPAGE="https://github.com/dmwit/encoding"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="generate-encodings"

RDEPEND=">=dev-haskell/extensible-exceptions-0.1:=[profile?] <dev-haskell/extensible-exceptions-0.2:=[profile?]
	>=dev-haskell/regex-compat-0.71:=[profile?] <dev-haskell/regex-compat-0.96:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	generate-encodings? ( >=dev-haskell/cabal-2.0:=[profile?] <dev-haskell/cabal-3.15:=[profile?]
				>=dev-haskell/haxml-1.22:=[profile?] <dev-haskell/haxml-1.27:=[profile?]
				dev-haskell/optparse-applicative:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/hunit
		dev-haskell/quickcheck )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag generate-encodings generate-encodings)
}
