# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999
#hackport: flags: +pedantic

CABAL_FEATURES=""
inherit haskell-cabal git-r3

DESCRIPTION="Scan Gentoo repositories for reverse dependencies"
HOMEPAGE="https://github.com/gentoo-haskell/revdep-scanner"
EGIT_REPO_URI="https://github.com/gentoo-haskell/${PN}.git"

LICENSE="GPL-3+"
SLOT="0"

RDEPEND=">=dev-haskell/conduit-1.3.0:= <dev-haskell/conduit-1.4:=
	>=dev-haskell/conduit-extra-1.1.12:= <dev-haskell/conduit-extra-1.4:=
	~dev-haskell/parsable-9999:=
	>=dev-haskell/parsec-3.1:= <dev-haskell/parsec-3.2:=
	~dev-haskell/portage-hs-9999:=
	>=dev-haskell/pretty-simple-4.1.1.0:= <dev-haskell/pretty-simple-4.2:=
	>=dev-haskell/text-1.2.5.0:= <dev-haskell/text-2.2:=
	>=dev-haskell/unordered-containers-0.2:= <dev-haskell/unordered-containers-0.3:=
	>=dev-lang/ghc-9.2.6:=
	sys-apps/pkgcore
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.6.3.0
"

src_prepare() {
	haskell-cabal_src_prepare

	sed -e 's/^version:.*/&.9999/' -i ${PN}.cabal || die # just to distinct from release install
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=pedantic
}
