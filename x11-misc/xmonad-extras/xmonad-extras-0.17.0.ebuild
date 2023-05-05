# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.2.2.9999
#hackport: flags: -testing,with_brightness:brightness,with_hint:eval,with_mpd:mpd,-with_hlist,-with_template_haskell,with_parsec:volume,with_split:volume,+with_regex_posix,with_sound:alsa

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Third party extensions for xmonad with wacky dependencies"
HOMEPAGE="https://github.com/xmonad/xmonad-extras"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+alsa +brightness +eval +mpd"

RDEPEND="dev-haskell/regex-posix:=[profile?]
	>=dev-haskell/x11-1.4.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
	>=x11-wm/xmonad-0.10:=[profile?]
	>=x11-wm/xmonad-contrib-0.10:=[profile?]
	alsa? ( >=dev-haskell/alsa-mixer-0.3:=[profile?] )
	eval? ( >=dev-haskell/hint-0.3.3.3:=[profile?] <dev-haskell/hint-0.10:=[profile?]
		dev-haskell/network:=[profile?] )
	mpd? ( >=dev-haskell/libmpd-0.9:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-testing \
		$(cabal_flag brightness with_brightness) \
		$(cabal_flag eval with_hint) \
		--flag=-with_hlist \
		$(cabal_flag mpd with_mpd) \
		--flag=with_regex_posix \
		$(cabal_flag alsa with_sound) \
		--flag=-with_template_haskell
}
