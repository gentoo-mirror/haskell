# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="PortMidi"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A binding for PortMedia/PortMidi"
HOMEPAGE="https://github.com/ninegua/PortMidi"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.10.1:=
	media-libs/alsa-lib
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

S="${WORKDIR}/${MY_P}"
