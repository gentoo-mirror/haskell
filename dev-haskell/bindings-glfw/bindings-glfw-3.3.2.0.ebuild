# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.4.9999
#hackport: flags: -macosxusechdir,-macosxuseretina,-macosxusemenubar,-mir,x:X,-wayland,+system-glfw

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="bindings-GLFW"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Low-level bindings to GLFW OpenGL library"
HOMEPAGE="https://hackage.haskell.org/package/bindings-GLFW"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+X exposenative osmesa"

RESTRICT=test # fails

RDEPEND=">=dev-haskell/bindings-dsl-1.0:=[profile?] <dev-haskell/bindings-dsl-1.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	>=media-libs/glfw-3.3
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/hunit-1.3 <dev-haskell/hunit-1.7
		>=dev-haskell/test-framework-0.8 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.3 <dev-haskell/test-framework-hunit-0.4 )
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag exposenative exposenative) \
		--flag=-macosxusechdir \
		--flag=-macosxusemenubar \
		--flag=-macosxuseretina \
		--flag=-mir \
		$(cabal_flag osmesa osmesa) \
		--flag=system-glfw \
		--flag=-wayland \
		$(cabal_flag X x)
}
