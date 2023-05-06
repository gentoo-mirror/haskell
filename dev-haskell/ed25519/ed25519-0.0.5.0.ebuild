# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.2.2.9999
#hackport: flags: +no-donna,+test-doctests,+test-properties,-test-hlint

CABAL_HACKAGE_REVISION=5

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite"
inherit haskell-cabal

DESCRIPTION="Ed25519 cryptographic signatures"
HOMEPAGE="https://thoughtpolice.github.com/hs-ed25519"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RESTRICT=test # bitrotten test suite

RDEPEND=">=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1"
#	test? ( >=dev-haskell/doctest-0.10 <dev-haskell/doctest-0.12
#		>=dev-haskell/quickcheck-2.4 <dev-haskell/quickcheck-2.9 )
#"

src_configure() {
	haskell-cabal_src_configure \
		--flag=no-donna \
		--flag=test-doctests \
		--flag=-test-hlint \
		--flag=test-properties
}
