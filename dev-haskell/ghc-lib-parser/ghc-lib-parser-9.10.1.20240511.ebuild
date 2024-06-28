# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999
#hackport: flags: threaded-rts:threads

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="The GHC API, decoupled from GHC versions"
HOMEPAGE="https://github.com/digital-asset/ghc-lib"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+threads"

RDEPEND="dev-haskell/parsec:=[profile?]
	>=dev-lang/ghc-9.6.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/alex-3.1
	>=dev-haskell/cabal-3.10.1.0
	>dev-haskell/happy-1.20
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag threads threaded-rts)
}
