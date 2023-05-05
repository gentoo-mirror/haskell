# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="EXIF handling library in pure Haskell"
HOMEPAGE="https://github.com/emmanueltouzery/hsexif"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+iconv"

RDEPEND=">=dev-haskell/text-0.9:=[profile?]
	>=dev-lang/ghc-7.8.2:=[profile?]
	iconv? ( >=dev-haskell/iconv-0.4:=[profile?] <dev-haskell/iconv-0.5:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/hspec
		>=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.7 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag iconv iconv)
}
