# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A math-inspired programmatic 2D & 3D CAD system"
HOMEPAGE="https://implicitcad.org/"
MY_PN=implicit
MY_P=$MY_PN-$PV
S="${WORKDIR}/${MY_P}"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="AGPL-3+"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+docgen +extopenscad implicitsnap"

RDEPEND="dev-haskell/blaze-builder:=[profile?]
	dev-haskell/blaze-markup:=[profile?]
	dev-haskell/blaze-svg:=[profile?]
	dev-haskell/data-default-class:=[profile?]
	dev-haskell/juicypixels:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/linear:=[profile?]
	dev-haskell/parallel:=[profile?]
	dev-haskell/parsec:=[profile?]
	dev-haskell/random:=[profile?]
	dev-haskell/show-combinators:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-8.10.6:=
	extopenscad? ( >=dev-haskell/optparse-applicative-0.10.0:=[profile?] )
	implicitsnap? ( dev-haskell/aeson:=[profile?]
			dev-haskell/snap-core:=[profile?]
			dev-haskell/snap-server:=[profile?]
			dev-haskell/utf8-string:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.1.0
	test? ( dev-haskell/hedgehog
		dev-haskell/hspec
		dev-haskell/hunit
		dev-haskell/hw-hspec-hedgehog
		dev-haskell/quickcheck )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag docgen docgen) \
		$(cabal_flag extopenscad extopenscad) \
		$(cabal_flag implicitsnap implicitsnap)
}
