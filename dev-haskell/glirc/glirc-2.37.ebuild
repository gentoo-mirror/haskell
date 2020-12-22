# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Console IRC client"
HOMEPAGE="https://github.com/glguy/irc-core"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/async-2.2:=[profile?] <dev-haskell/async-2.3:=[profile?]
	>=dev-haskell/attoparsec-0.13:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/base64-bytestring-1.0.0.1:=[profile?] <dev-haskell/base64-bytestring-1.3:=[profile?]
	>=dev-haskell/config-schema-1.2.1.0:=[profile?] <dev-haskell/config-schema-1.3:=[profile?]
	>=dev-haskell/config-value-0.8:=[profile?] <dev-haskell/config-value-0.9:=[profile?]
	>=dev-haskell/free-4.12:=[profile?] <dev-haskell/free-5.2:=[profile?]
	>=dev-haskell/gitrev-1.2:=[profile?] <dev-haskell/gitrev-1.4:=[profile?]
	>=dev-haskell/hashable-1.2.4:=[profile?] <dev-haskell/hashable-1.4:=[profile?]
	>=dev-haskell/hookup-0.5:=[profile?] <dev-haskell/hookup-0.6:=[profile?]
	>=dev-haskell/hsopenssl-0.11:=[profile?] <dev-haskell/hsopenssl-0.12:=[profile?]
	>=dev-haskell/irc-core-2.9:=[profile?] <dev-haskell/irc-core-2.10:=[profile?]
	>=dev-haskell/kan-extensions-5.0:=[profile?] <dev-haskell/kan-extensions-5.3:=[profile?]
	>=dev-haskell/lens-4.14:=[profile?] <dev-haskell/lens-4.20:=[profile?]
	>=dev-haskell/network-2.6.2:=[profile?] <dev-haskell/network-3.2:=[profile?]
	>=dev-haskell/psqueues-0.2.7:=[profile?] <dev-haskell/psqueues-0.3:=[profile?]
	>=dev-haskell/random-1.2:=[profile?] <dev-haskell/random-1.3:=[profile?]
	>=dev-haskell/regex-tdfa-1.3.1:=[profile?] <dev-haskell/regex-tdfa-1.4:=[profile?]
	>=dev-haskell/semigroupoids-5.1:=[profile?] <dev-haskell/semigroupoids-5.4:=[profile?]
	>=dev-haskell/split-0.2:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/stm-2.4:=[profile?] <dev-haskell/stm-2.6:=[profile?]
	>=dev-haskell/text-1.2.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2.7:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.11:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-haskell/vty-5.23.1:=[profile?] <dev-haskell/vty-5.33:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1 <dev-haskell/cabal-4
	dev-haskell/hsc2hs
	test? ( >=dev-haskell/hunit-1.6 <dev-haskell/hunit-1.7 )
"
