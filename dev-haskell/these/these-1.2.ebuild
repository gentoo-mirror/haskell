# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999
#hackport: flags: aeson,assoc,quickcheck,semigroupoids,+assoc

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="An either-or-both data type"
HOMEPAGE="https://github.com/haskellari/these"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/assoc-1.1:=[profile?] <dev-haskell/assoc-1.2:=[profile?]
	>=dev-haskell/foldable1-classes-compat-0.1:=[profile?] <dev-haskell/foldable1-classes-compat-0.2:=[profile?]
	>=dev-haskell/hashable-1.2.7.0:=[profile?] <dev-haskell/hashable-1.5:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=assoc
}
