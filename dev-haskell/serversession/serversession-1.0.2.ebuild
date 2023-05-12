# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: -lib-werror

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Secure, modular server-side sessions"
HOMEPAGE="https://github.com/yesodweb/serversession"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="dev-haskell/aeson:=[profile?]
	>=dev-haskell/base64-bytestring-1.0:=[profile?] <dev-haskell/base64-bytestring-1.3:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/nonce-1.0:=[profile?] <dev-haskell/nonce-1.1:=[profile?]
	dev-haskell/path-pieces:=[profile?]
	dev-haskell/persistent-test:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/hspec-2.1 <dev-haskell/hspec-3
		dev-haskell/quickcheck )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-lib-werror
}
