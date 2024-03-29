# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.3

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A Haskell library for writing FastCGI programs"
HOMEPAGE="https://hackage.haskell.org/package/fastcgi"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/cgi-3000.0.0:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	dev-libs/fcgi
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"
