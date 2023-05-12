# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit ghc-package haskell-cabal

DESCRIPTION="Portable temporary file and directory support"
HOMEPAGE="https://github.com/feuerbach/temporary"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

PATCHES=(
	"${FILESDIR}/${PN}-1.3-smp-flag.patch"
)

RDEPEND="
	>=dev-haskell/random-1.1:=[profile?]
	>=dev-lang/ghc-8.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
	test? (
		dev-haskell/base-compat
		dev-haskell/tasty
		dev-haskell/tasty-hunit
	)
"

src_configure() {
	if ghc-supports-smp; then
		local smp_flag=smp
	else
		local smp_flag=-smp
	fi

	haskell-cabal_src_configure \
		--flag="${smp_flag}"
}
