# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999
#hackport: flags: -double

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Command-line interface for the hledger accounting system"
HOMEPAGE="https://hledger.org"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+terminfo +threaded"

RDEPEND=">=dev-haskell/aeson-1:=[profile?]
	>=dev-haskell/ansi-terminal-0.9:=[profile?]
	>=dev-haskell/cmdargs-0.10:=[profile?]
	>=dev-haskell/data-default-0.5:=[profile?]
	>=dev-haskell/decimal-0.5.1:=[profile?]
	dev-haskell/diff:=[profile?]
	>=dev-haskell/extra-1.6.3:=[profile?]
	>=dev-haskell/githash-0.1.4:=[profile?]
	>=dev-haskell/hashable-1.2.4:=[profile?]
	>=dev-haskell/haskeline-0.6:=[profile?]
	>=dev-haskell/hledger-lib-1.26:=[profile?] <dev-haskell/hledger-lib-1.27:=[profile?]
	dev-haskell/lucid:=[profile?]
	>=dev-haskell/math-functions-0.3.3.0:=[profile?]
	>=dev-haskell/megaparsec-7.0.0:=[profile?] <dev-haskell/megaparsec-9.3:=[profile?]
	>=dev-haskell/microlens-0.4:=[profile?]
	dev-haskell/regex-tdfa:=[profile?]
	>=dev-haskell/safe-0.2:=[profile?]
	>=dev-haskell/shakespeare-2.0.2.2:=[profile?]
	>=dev-haskell/split-0.1:=[profile?]
	>=dev-haskell/tabular-0.2:=[profile?]
	>=dev-haskell/tasty-1.2.3:=[profile?]
	dev-haskell/temporary:=[profile?]
	dev-haskell/timeit:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-haskell/utf8-string-0.3.5:=[profile?]
	>=dev-haskell/utility-ht-0.0.13:=[profile?]
	>=dev-haskell/wizards-1.0:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-double \
		$(cabal_flag terminfo terminfo) \
		$(cabal_flag threaded threaded)
}

src_install() {
		haskell-cabal_src_install

		doman embeddedfiles/*.1
#		doman embeddedfiles/*.5 # doman:embeddedfiles/*.5 does not exist
		doinfo embeddedfiles/*.info
}
