# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.2.1.9999
#hackport: flags: -lib-werror
CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Storage backend for serversession using Redis"
HOMEPAGE="https://github.com/yesodweb/serversession"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RESTRICT="test" # requires running redis server

RDEPEND=">=dev-haskell/hedis-0.15:=[profile?] <dev-haskell/hedis-0.16:=[profile?]
	dev-haskell/path-pieces:=[profile?]
	>=dev-haskell/serversession-1.0:=[profile?] <dev-haskell/serversession-1.1:=[profile?]
	>=dev-haskell/tagged-0.7:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/hspec-2.1 <dev-haskell/hspec-3 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-lib-werror
}
