# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Simple and easy network connections API"
HOMEPAGE="https://github.com/kazu-yamamoto/crypton-connection"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="dev-haskell/basement:=[profile?]
	>=dev-haskell/crypton-x509-1.5:=[profile?]
	>=dev-haskell/crypton-x509-store-1.5:=[profile?]
	>=dev-haskell/crypton-x509-system-1.5:=[profile?]
	>=dev-haskell/crypton-x509-validation-1.5:=[profile?]
	dev-haskell/data-default-class:=[profile?]
	>=dev-haskell/network-2.6.3:=[profile?]
	>=dev-haskell/socks-0.6:=[profile?]
	>=dev-haskell/tls-1.7:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"
