# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999
#hackport: flags: selftest:test

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="GHC build system"
HOMEPAGE="https://gitlab.haskell.org/ghc/ghc/-/tree/master/hadrian#readme"
SRC_URI="https://downloads.haskell.org/ghc/${PV/_/-}/ghc-${PV}-src.tar.xz"

S="${WORKDIR}/ghc-${PV}/${CABAL_PN}"
CABAL_FILE="${S}/${CABAL_PN}.cabal"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE="static test +threaded"

RESTRICT="!test? ( test )"

CABAL_CHDEPS=(
	'Cabal                >= 3.10    && < 3.11' 'Cabal >= 3.10'
	'containers           >= 0.5     && < 0.7' 'containers           >= 0.5'
)

PATCHES=(
	"${FILESDIR}/${PN}-9.10.1-remove-with-cc-configure-flag.patch"
	"${FILESDIR}/${PN}-9.4.8-disable-doc-archives.patch"
	"${FILESDIR}/${PN}-9.10.1-add-packages.patch"
)

RDEPEND="
	>=dev-haskell/base16-bytestring-0.1.1:= <dev-haskell/base16-bytestring-1.1.0.0:=
	>=dev-haskell/cryptohash-sha256-0.11:= <dev-haskell/cryptohash-sha256-0.12:=
	>=dev-haskell/extra-1.4.7:=
	~dev-haskell/ghc-platform-${PV}
	~dev-haskell/ghc-toolchain-${PV}
	>=dev-haskell/parsec-3.1:= <dev-haskell/parsec-3.2:=
	>=dev-haskell/text-1.2:= <dev-haskell/text-3:=
	>=dev-haskell/unordered-containers-0.2.1:= <dev-haskell/unordered-containers-0.3:=
	>=dev-lang/ghc-9.0.2:=
	>=dev-util/shake-0.18.3:= <dev-util/shake-0.20:=
	|| (
		( >=dev-haskell/cabal-3.10 <dev-haskell/cabal-3.12 )
		>=dev-haskell/cabal-3.12.1.0
	)
	dev-haskell/cabal:=
	static? (
		dev-libs/libffi[static-libs]
		dev-libs/gmp[static-libs]
	)
	test? (
		>=dev-haskell/quickcheck-2.6:= <dev-haskell/quickcheck-2.15:=
	)
"

# Statically linking is finnicky and seems to depend on what flags ghc is
# compiled with.
#
# BUG: Fails to statically link with dev-lang/ghc[elfutils], even if
# dev-libs/elfutils[static-libs] is installed
# See: <https://github.com/gentoo-haskell/gentoo-haskell/issues/1779>
RDEPEND+="
	static? (
		|| (
			sys-process/numactl[static-libs]
			dev-lang/ghc[-numa]
		)
		dev-lang/ghc[-elfutils]
	)
"

DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"

# The cabal file for hadrian passes "-with-rtsopts=-I0 -qg" to GHC when
# USE=threaded is enabled, but that doesn't work with an unregisterised
# ghc.
BDEPEND="threaded? ( dev-lang/ghc[-unregisterised] )"

src_prepare() {
	sed -i -e \
		's/^\(version:.*\)0\.1\.0\.0/\1'"${PV}"'/' \
		"${CABAL_FILE}" || die
	haskell-cabal_src_prepare
}

src_configure() {
	local configure_flags=(
		$(cabal_flag test selftest)
		$(cabal_flag threaded threaded)
	)

	if use static; then
		configure_flags+=(
			--disable-shared
			--enable-static
			--disable-executable-dynamic
			--enable-executable-static
		)
	fi

	haskell-cabal_src_configure "${configure_flags[@]}"
}
