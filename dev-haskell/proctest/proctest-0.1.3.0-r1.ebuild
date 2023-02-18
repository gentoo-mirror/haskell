# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999
#hackport: flags: +split-these

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="An IO library for testing interactive command line programs"
HOMEPAGE="https://github.com/nh2/proctest"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-haskell/hspec:=[profile?]
	dev-haskell/hunit:=[profile?]
	|| ( dev-lang/ghc >=dev-haskell/process-1.1.0.1[profile?] )
	>=dev-haskell/quickcheck-2.4.2:2=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=split-these
}
