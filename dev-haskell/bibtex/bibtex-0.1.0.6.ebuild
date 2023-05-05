# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Parse, format and processing BibTeX files"
HOMEPAGE="https://www.haskell.org/haskellwiki/BibTeX"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
#IUSE="buildexamples"

RDEPEND=">=dev-haskell/latex-0.1:=[profile?] <dev-haskell/latex-0.2:=[profile?]
	>=dev-haskell/parsec-2.1:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/utility-ht-0.0.5:=[profile?] <dev-haskell/utility-ht-0.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=[profile?]
	"
	#buildexamples? ( >=dev-haskell/cabal-1.6:=[profile?] <dev-haskell/cabal-1.24:=[profile?]
	#			>=dev-haskell/old-time-1.0:=[profile?] <dev-haskell/old-time-1.2:=[profile?]
	#			>=dev-haskell/tar-0.3:=[profile?] <dev-haskell/tar-0.5:=[profile?]
	#			>=dev-haskell/utf8-string-0.3.4:=[profile?] <dev-haskell/utf8-string-0.4:=[profile?] )
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

#src_configure() {
#	haskell-cabal_src_configure \
#		$(cabal_flag buildexamples buildexamples)
#}
