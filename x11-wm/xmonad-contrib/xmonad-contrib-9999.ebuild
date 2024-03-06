# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.1
#hackport: flags: -testing,use_xft:xft

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal git-r3

DESCRIPTION="Third party extensions for xmonad"
HOMEPAGE="http://xmonad.org/"
EGIT_REPO_URI="https://github.com/xmonad/xmonad-contrib"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS=""
IUSE="+xft"

RDEPEND="dev-haskell/extensible-exceptions:=[profile?]
	>=dev-haskell/mtl-1:=[profile?] <dev-haskell/mtl-3:=[profile?]
	dev-haskell/old-locale:=[profile?]
	dev-haskell/old-time:=[profile?]
	dev-haskell/random:=[profile?]
	dev-haskell/semigroups:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-haskell/x11-1.10:=[profile?] <dev-haskell/x11-1.11:=[profile?]
	>=dev-lang/ghc-8.0.1:=
	>=x11-wm/xmonad-0.16:=[profile?]
	xft? ( >=dev-haskell/x11-xft-0.2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-testing \
		$(cabal_flag xft use_xft)
}
