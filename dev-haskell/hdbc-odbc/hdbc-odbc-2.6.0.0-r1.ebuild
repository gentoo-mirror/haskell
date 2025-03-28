# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999
#hackport: flags: -buildtests,-buildstresstest

CABAL_PN="HDBC-odbc"

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="ODBC driver for HDBC"
HOMEPAGE="https://github.com/hdbc/hdbc-odbc"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="dev-db/unixODBC
	>=dev-haskell/concurrent-extra-0.7.0.8:=[profile?]
	>=dev-haskell/hdbc-2.1.0:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	virtual/libc
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-buildstresstest \
		--flag=-buildtests
}
