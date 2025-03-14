# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Converting to/from HTTP API data like URL pieces, headers and query parameters"
HOMEPAGE="https://github.com/fizruk/http-api-data"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="text-show"

CABAL_CHDEPS=( 'base                  >= 4.12.0.0 && < 4.21' 'base >= 4.12.0.0 && < 4.22')

RDEPEND=">=dev-haskell/cookie-0.4.3:=[profile?] <dev-haskell/cookie-0.6:=[profile?]
	>=dev-haskell/hashable-1.4.4.0:=[profile?] <dev-haskell/hashable-1.6:=[profile?]
	>=dev-haskell/http-types-0.12.4:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/tagged-0.8.8:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/text-iso8601-0.1.1:=[profile?] <dev-haskell/text-iso8601-0.2:=[profile?]
	>=dev-haskell/time-compat-1.9.5:=[profile?] <dev-haskell/time-compat-1.10:=[profile?]
	>=dev-haskell/unordered-containers-0.2.20:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/uuid-types-1.0.6:=[profile?] <dev-haskell/uuid-types-1.1:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	|| ( ( >=dev-haskell/text-1.2.3.0 <dev-haskell/text-1.3 )
		( >=dev-haskell/text-2.0 <dev-haskell/text-2.2 ) )
	dev-haskell/text:=[profile?]
	text-show? ( >=dev-haskell/text-show-3.10.5:=[profile?] <dev-haskell/text-show-3.11:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/hspec-2.7.1 <dev-haskell/hspec-2.12
		>=dev-haskell/hunit-1.6.0.0 <dev-haskell/hunit-1.7
		>=dev-haskell/quickcheck-2.13.1 <dev-haskell/quickcheck-2.16
		>=dev-haskell/quickcheck-instances-0.3.25.2 <dev-haskell/quickcheck-instances-0.4
		dev-haskell/text )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag text-show use-text-show)
}
