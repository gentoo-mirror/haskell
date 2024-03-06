# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.4.9999

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="split two-column PDFs, so there is one column per page"
HOMEPAGE="http://dmwit.com/pdfsplit"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/pdfinfo-0:=
	>=dev-haskell/temporary-1:=
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.2
"

src_prepare() {
	default

	cabal_chdeps \
		'pdfinfo >= 0 && < 1' 'pdfinfo >= 0'
}
