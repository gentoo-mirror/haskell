# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit eutils haskell-cabal

MY_PN="Etherbunny"
MY_P="${MY_PN}-${PV}"
S="${WORKDIR}/${MY_P}"

DESCRIPTION="A network analysis toolkit for Haskell"
HOMEPAGE="http://etherbunny.anytini.com/"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="dev-haskell/binary:=[profile?]
		dev-haskell/network:=[profile?]
		dev-haskell/pcap:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		net-libs/libpcap"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-0"

PATCHES=( "${FILESDIR}/${P}-base-4.patch" )

src_prepare() {
	default

	CABAL_FILE=${MY_PN}.cabal cabal_chdeps \
		'base, haskell98' 'base'
}
