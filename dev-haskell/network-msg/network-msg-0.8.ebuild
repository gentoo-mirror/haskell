# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Recvmsg and sendmsg bindings"
HOMEPAGE="https://hackage.haskell.org/package/network-msg"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="WTFPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/binary-0.7.0.0:=[profile?]
	dev-haskell/network:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"
