# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="SMTPClient"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A simple SMTP client library"
HOMEPAGE="https://hackage.haskell.org/package/SMTPClient"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/extensible-exceptions-0.1:=[profile?] <dev-haskell/extensible-exceptions-0.2:=[profile?]
	>=dev-haskell/hsemail-1:=[profile?] <dev-haskell/hsemail-2:=[profile?]
	dev-haskell/network:=[profile?]
	dev-haskell/old-locale:=[profile?]
	dev-haskell/old-time:=[profile?]
	>=dev-lang/ghc-7.4.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

PATCHES=("${FILESDIR}"/${PN}-1.1.0-network-3.patch)

S="${WORKDIR}/${MY_P}"
