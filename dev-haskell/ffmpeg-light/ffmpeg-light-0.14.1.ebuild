# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999
#hackport: flags: BuildDemo:exmaples,BuildRasterDemo:examples,BuildVPlayDemo:examples,BuildTranscodeDemo:examples,BuildAudioExtractDemo:examples,BuildAudioSinDemo:examples

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Minimal bindings to the FFmpeg library"
HOMEPAGE="https://github.com/acowley/ffmpeg-light"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="examples"

CABAL_CHDEPS=(
	'vector >= 0.10.9 && < 0.13' 'vector >=0.10.9'
	'mtl >= 2.2.1 && < 2.3' 'mtl >= 2.2.1'
)

CABAL_CHBINS=(
	'demo' "${PN}-demo"
	'raster' "${PN}-raster"
	'vplay' "${PN}-vplay"
	'transcode' "${PN}-transcode"
	'audio-extract' "${PN}-audio-extract"
	'audio-sin' "${PN}-audio-sin"
)

PATCHES=(
	"${FILESDIR}/${PN}-0.14.1-mtl-2_3.patch"
)

# Requires <ffmpeg-5.1 (<https://github.com/acowley/ffmpeg-light/issues/69>)
RDEPEND="dev-haskell/either:=[profile?]
	>=dev-haskell/juicypixels-3.2:=[profile?] <dev-haskell/juicypixels-3.4:=[profile?]
	>=dev-haskell/vector-0.10.9:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	<media-video/ffmpeg-5.1:=
	examples? (
		dev-haskell/monad-loops:=[profile?]
		>=dev-haskell/rasterific-0.3:=[profile?]
		dev-haskell/sdl2:=[profile?]
		dev-haskell/text:=[profile?]
	)
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	virtual/pkgconfig
"

src_configure() {
	# vplay demo fails to build
	haskell-cabal_src_configure \
		$(cabal_flag examples buildaudioextractdemo) \
		$(cabal_flag examples buildaudiosindemo) \
		$(cabal_flag examples builddemo) \
		$(cabal_flag examples buildrasterdemo) \
		$(cabal_flag examples buildtranscodedemo) \
		--flag=-buildvplaydemo
}
