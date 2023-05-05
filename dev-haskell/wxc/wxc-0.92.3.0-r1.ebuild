# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.3.9999

WX_GTK_VER="3.0-gtk3"

CABAL_FEATURES="lib profile" # ho docs as it has no haskell files
inherit haskell-cabal multilib wxwidgets

DESCRIPTION="wxHaskell C++ wrapper"
HOMEPAGE="https://wiki.haskell.org/WxHaskell"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="wxWinLL-3.1"
SLOT="${WX_GTK_VER}/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="gstreamer"

RDEPEND=">dev-haskell/split-0:=[profile?]
	>=dev-haskell/wxdirect-0.90.1.1:${WX_GTK_VER}=[profile?]
	x11-libs/wxGTK:${WX_GTK_VER}=[X,gstreamer?,opengl]
	>=dev-lang/ghc-7.6.1:=[profile?]
	!!dev-haskell/wxc:3.0
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.23
"

PATCHES=(
	"${FILESDIR}"/${PN}-0.92.3.0-cabal-2.2.patch
	"${FILESDIR}"/${PN}-0.92.3.0-cabal-3.patch
	"${FILESDIR}"/${PN}-0.92.3.0-cabal-3.2.patch
)

src_prepare() {
	default

	setup-wxwidgets

	sed -e "s@\"wx-config\"@\"${WX_CONFIG}\"@g" \
		-i "${S}/Setup.hs" || die "Could not specify wx-config in Setup.hs"
}

src_configure() {
	local cgcc=()
	for i in ${CXXFLAGS}
	do
		cgcc+=( --gcc-option="${i}" )
	done
	# Trying to specify the LDFLAGS in --ld-option does not work, as ld does
	# not understand ld options prefixed with -Wl,
	# The linker that is used to link the libwxc.so shared library is hard coded
	# in Setup.hs.  So the --with-ld would not change the linker used when
	# linking libwxc.so.  --with-ld="gcc" does not help, as then cabal passes
	# ld options like -x to gcc which then returns a non-zero exit status, then
	# cabal ignores all the --ld-option parameters.
	# So I place all the LDFLAGS in --gcc-option parameters. They are ignored
	# when building .o files.
	local cld=()
	for i in ${LDFLAGS}
	do
		cld+=( --gcc-option="${i}" )
	done
	cabal_src_configure ${cgcc[*]} ${cld[*]} --verbose=3
}
