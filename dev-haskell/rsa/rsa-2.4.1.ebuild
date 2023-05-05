# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0
#hackport: flags: -oldbase,-buildtestexecutable

CABAL_PN="RSA"

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Implementation of RSA, using the padding schemes of PKCS#1 v2.1"
HOMEPAGE="https://hackage.haskell.org/package/RSA"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/crypto-api-0.10:=[profile?] <dev-haskell/crypto-api-0.14:=[profile?]
	>=dev-haskell/crypto-pubkey-types-0.2:=[profile?] <dev-haskell/crypto-pubkey-types-0.6:=[profile?]
	>=dev-haskell/sha-1.6.4.1:=[profile?] <dev-haskell/sha-2.0:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/crypto-pubkey-types-0.4 <dev-haskell/crypto-pubkey-types-0.6
		>=dev-haskell/quickcheck-2.5 <dev-haskell/quickcheck-3
		>=dev-haskell/tagged-0.2 <dev-haskell/tagged-0.9
		>=dev-haskell/test-framework-0.8.0.3 <dev-haskell/test-framework-0.10
		>=dev-haskell/test-framework-quickcheck2-0.3.0.2 <dev-haskell/test-framework-quickcheck2-0.5 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-buildtestexecutable \
		--flag=-oldbase
}
