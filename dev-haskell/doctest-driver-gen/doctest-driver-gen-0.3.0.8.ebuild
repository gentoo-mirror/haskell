# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Generate driver file for doctest's cabal integration"
HOMEPAGE="https://github.com/Hexirp/doctest-driver-gen#readme"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="executable"

PATCHES=(
	"${FILESDIR}/${PN}-0.3.0.7-add-executable-flag.patch"
)

CABAL_TEST_REQUIRED_BINS=(
	"${PN}"
)

RDEPEND="
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="
	${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? (
		dev-haskell/doctest
	)
"

src_configure() {
	if use executable || use test; then
		local exe_flag=--flag=executable
	else
		local exe_flag=--flag=-executable
	fi

	# test-suite preprocessor needs the newly built components
	export LD_LIBRARY_PATH="${S}/dist/build/${LD_LIBRARY_PATH+:}${LD_LIBRARY_PATH}"
	export PATH="${S}/dist/build/${PN}${PATH+:}${PATH}"

	haskell-cabal_src_configure "${exe_flag}"
}

src_install() {
	local components=( "lib:${PN}" )
	use executable && components+=( "exe:${PN}" )
	haskell-cabal_src_install "${components[@]}"
}
