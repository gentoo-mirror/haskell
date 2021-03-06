# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: -lib-werror,+test-hunit,+test-properties

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Lenses, Folds and Traversals"
HOMEPAGE="https://github.com/ekmett/lens/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="benchmark-uniplate dump-splices +inlining j +test-templates +trustworthy"

RDEPEND=">=dev-haskell/assoc-1.0.2:=[profile?] <dev-haskell/assoc-1.1:=[profile?]
	>=dev-haskell/base-orphans-0.5.2:=[profile?] <dev-haskell/base-orphans-1:=[profile?]
	>=dev-haskell/bifunctors-5.1:=[profile?] <dev-haskell/bifunctors-6:=[profile?]
	>=dev-haskell/call-stack-0.1:=[profile?] <dev-haskell/call-stack-0.4:=[profile?]
	>=dev-haskell/comonad-5.0.7:=[profile?] <dev-haskell/comonad-6:=[profile?]
	>=dev-haskell/contravariant-1.3:=[profile?] <dev-haskell/contravariant-2:=[profile?]
	>=dev-haskell/distributive-0.3:=[profile?] <dev-haskell/distributive-1:=[profile?]
	>=dev-haskell/exceptions-0.1.1:=[profile?] <dev-haskell/exceptions-1:=[profile?]
	>=dev-haskell/free-5.1.5:=[profile?] <dev-haskell/free-6:=[profile?]
	>=dev-haskell/hashable-1.1.2.3:=[profile?] <dev-haskell/hashable-1.4:=[profile?]
	>=dev-haskell/indexed-traversable-0.1:=[profile?] <dev-haskell/indexed-traversable-0.2:=[profile?]
	>=dev-haskell/indexed-traversable-instances-0.1:=[profile?] <dev-haskell/indexed-traversable-instances-0.2:=[profile?]
	>=dev-haskell/kan-extensions-5:=[profile?] <dev-haskell/kan-extensions-6:=[profile?]
	>=dev-haskell/mtl-2.0.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/parallel-3.1.0.1:=[profile?] <dev-haskell/parallel-3.3:=[profile?]
	>=dev-haskell/profunctors-5.5.2:=[profile?] <dev-haskell/profunctors-6:=[profile?]
	>=dev-haskell/reflection-2.1:=[profile?] <dev-haskell/reflection-3:=[profile?]
	>=dev-haskell/semigroupoids-5:=[profile?] <dev-haskell/semigroupoids-6:=[profile?]
	>=dev-haskell/strict-0.4:=[profile?] <dev-haskell/strict-0.5:=[profile?]
	>=dev-haskell/tagged-0.4.4:=[profile?] <dev-haskell/tagged-1:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/th-abstraction-0.4.1:=[profile?] <dev-haskell/th-abstraction-0.5:=[profile?]
	>=dev-haskell/these-1.1.1.1:=[profile?] <dev-haskell/these-1.2:=[profile?]
	>=dev-haskell/transformers-compat-0.4:=[profile?] <dev-haskell/transformers-compat-1:=[profile?]
	>=dev-haskell/unordered-containers-0.2.10:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.9:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/hunit-1.2
		>=dev-haskell/quickcheck-2.4
		>=dev-haskell/simple-reflect-0.3.1
		>=dev-haskell/test-framework-0.6
		>=dev-haskell/test-framework-hunit-0.2
		>=dev-haskell/test-framework-quickcheck2-0.2 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag benchmark-uniplate benchmark-uniplate) \
		$(cabal_flag dump-splices dump-splices) \
		$(cabal_flag inlining inlining) \
		$(cabal_flag j j) \
		--flag=-lib-werror \
		--flag=test-hunit \
		--flag=test-properties \
		$(cabal_flag test-templates test-templates) \
		$(cabal_flag trustworthy trustworthy)
}
