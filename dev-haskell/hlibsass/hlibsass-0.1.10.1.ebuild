# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.5

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal toolchain-funcs

DESCRIPTION="Low-level bindings to Libsass"
HOMEPAGE="https://github.com/jakubfijalkowski/hlibsass"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="externallibsass sharedlibsass"

RDEPEND=">=dev-lang/ghc-7.8.2:=[profile?]
	externallibsass? ( dev-libs/libsass:= )
	!externallibsass? ( sys-devel/gcc:=[cxx] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/hspec )
"

REQUIRED_USE="
	externallibsass? ( !sharedlibsass )
"

src_configure() {
	# uses 'make' directly
	tc-export AR CC CXX

	haskell-cabal_src_configure \
		$(cabal_flag externallibsass externallibsass) \
		$(cabal_flag sharedlibsass sharedlibsass)
}
