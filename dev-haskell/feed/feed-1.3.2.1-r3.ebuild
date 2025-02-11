# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Interfacing with RSS (v 0.9x, 2.x, 1.0) + Atom feeds"
HOMEPAGE="https://github.com/haskell-party/feed"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	# Test suite lagging behind
	'base-compat >= 0.9 && < 0.13' 'base-compat >= 0.9 && < 0.14'
)

PATCHES=( "${FILESDIR}/${PN}-1.3.2.1-disable-doctest.patch" )

RDEPEND="
	>=dev-haskell/base-compat-0.9:=[profile?] <dev-haskell/base-compat-0.14
	=dev-haskell/old-locale-1.0*:=[profile?]
	>=dev-haskell/old-time-1:=[profile?] <dev-haskell/old-time-1.2
	=dev-haskell/safe-0.3*:=[profile?]
	=dev-haskell/time-locale-compat-0.1*:=[profile?]
	<dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-haskell/xml-conduit-1.3:=[profile?] <dev-haskell/xml-conduit-1.10
	>=dev-haskell/xml-types-0.3.6:=[profile?] <dev-haskell/xml-types-0.4
	>=dev-lang/ghc-9.0.2:=
	|| (
		<dev-haskell/text-1.3
		>=dev-haskell/text-2.0 <dev-haskell/text-2.2
	)
	dev-haskell/text:=[profile?]
"
DEPEND="
	${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? (
		>=dev-haskell/base-compat-0.9 <dev-haskell/base-compat-0.14
		dev-haskell/text
		dev-haskell/doctest
		dev-haskell/doctest-driver-gen
		>=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.7
		dev-haskell/syb
		=dev-haskell/test-framework-0.8*
		=dev-haskell/test-framework-hunit-0.3*
	)
"
BDEPEND="test? (
	dev-haskell/doctest-driver-gen[executable(+)]
	dev-haskell/markdown-unlit[executable(+)]
)"
