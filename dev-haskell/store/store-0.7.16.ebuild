# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0
#hackport: flags: -small-bench,-comparison-bench,-integer-simple

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Fast binary serialization"
HOMEPAGE="https://github.com/mgsloan/store#readme"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-haskell/async-2.0.2:=[profile?]
	>=dev-haskell/base-orphans-0.4.3:=[profile?]
	>=dev-haskell/base64-bytestring-0.1.1:=[profile?]
	>=dev-haskell/bifunctors-4.0:=[profile?]
	>=dev-haskell/contravariant-1.3:=[profile?]
	>=dev-haskell/cryptohash-0.11.6:=[profile?]
	>=dev-haskell/free-4.11:=[profile?]
	>=dev-haskell/hashable-1.2.3.1:=[profile?]
	>=dev-haskell/hspec-2.1.2:=[profile?]
	>=dev-haskell/hspec-smallcheck-0.3.0:=[profile?]
	>=dev-haskell/lifted-base-0.2.3.3:=[profile?]
	>=dev-haskell/monad-control-0.3.3.0:=[profile?]
	>=dev-haskell/mono-traversable-0.7.0:=[profile?]
	>=dev-haskell/nats-1:=[profile?]
	>=dev-haskell/network-2.6.0.2:=[profile?]
	>=dev-haskell/primitive-0.6:=[profile?]
	>=dev-haskell/resourcet-1.1.3.3:=[profile?]
	>=dev-haskell/safe-0.3.8:=[profile?]
	>=dev-haskell/smallcheck-1.1.1:=[profile?]
	>=dev-haskell/store-core-0.4:=[profile?] <dev-haskell/store-core-0.5:=[profile?]
	>=dev-haskell/syb-0.4.4:=[profile?]
	>=dev-haskell/th-lift-0.7.1:=[profile?]
	>=dev-haskell/th-lift-instances-0.1.4:=[profile?]
	>=dev-haskell/th-orphans-0.13.2:=[profile?]
	>=dev-haskell/th-reify-many-0.1.6:=[profile?]
	>=dev-haskell/th-utilities-0.2:=[profile?]
	>=dev-haskell/unordered-containers-0.2.5.1:=[profile?]
	>=dev-haskell/vector-0.10.12.3:=[profile?]
	>=dev-haskell/void-0.5.11:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? (
		>=dev-haskell/clock-0.3
	)
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-comparison-bench \
		--flag=-integer-simple \
		--flag=-small-bench
}
