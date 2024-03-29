# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999
#hackport: flags: _:underline

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Library and utility for processing cabal's plan.json file"
HOMEPAGE="https://hackage.haskell.org/package/cabal-plan"

LICENSE="GPL-2+"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+exe license-report underline"

RDEPEND=">=dev-haskell/base16-bytestring-1.0.0.0:=[profile?] <dev-haskell/base16-bytestring-1.1:=[profile?]
	>=dev-lang/ghc-8.8.1:=
	>=dev-haskell/aeson-2.0.0.0:=[profile?] <dev-haskell/aeson-2.3:=[profile?]
	>=dev-haskell/text-1.2.3:=[profile?] <dev-haskell/text-2.1:=[profile?]
	exe? ( >=dev-haskell/async-2.2.2:=[profile?] <dev-haskell/async-2.3:=[profile?]
		>=dev-haskell/base-compat-0.13.0:=[profile?] <dev-haskell/base-compat-0.14:=[profile?]
		>=dev-haskell/optics-core-0.4:=[profile?] <dev-haskell/optics-core-0.5:=[profile?]
		>=dev-haskell/parsec-3.1.13:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
		>=dev-haskell/semialign-1.3:=[profile?] <dev-haskell/semialign-1.4:=[profile?]
		>=dev-haskell/singleton-bool-0.1.5:=[profile?] <dev-haskell/singleton-bool-0.2:=[profile?]
		dev-haskell/text:=[profile?]
		>=dev-haskell/these-1.2:=[profile?] <dev-haskell/these-1.3:=[profile?]
		>=dev-haskell/topograph-1.0.0.2:=[profile?] <dev-haskell/topograph-1.1:=[profile?]
		>=dev-haskell/ansi-terminal-0.11:=[profile?] <dev-haskell/ansi-terminal-1.1:=[profile?]
		>=dev-haskell/optparse-applicative-0.17.0.0:=[profile?] <dev-haskell/optparse-applicative-0.19:=[profile?]
		>=dev-haskell/vector-0.12.0.1:=[profile?] <dev-haskell/vector-0.14:=[profile?]
		license-report? ( >=dev-haskell/cabal-install-parsers-0.6:=[profile?] <dev-haskell/cabal-install-parsers-0.7:=[profile?]
					>=dev-haskell/cabal-syntax-3.10.1.0:=[profile?] <dev-haskell/cabal-syntax-3.11:=[profile?]
					>=dev-haskell/tar-0.5.1.0:=[profile?] <dev-haskell/tar-0.6:=[profile?]
					>=dev-haskell/zlib-0.6.2:=[profile?] <dev-haskell/zlib-0.7:=[profile?] ) )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag underline _) \
		$(cabal_flag exe exe) \
		$(cabal_flag license-report license-report)
}
