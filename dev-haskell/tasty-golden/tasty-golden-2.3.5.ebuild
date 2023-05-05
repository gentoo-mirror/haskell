# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0
#hackport: flags: build-example:examples

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Golden tests support for tasty"
HOMEPAGE="https://github.com/UnkindPartition/tasty-golden"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

PATCHES=(
	"${FILESDIR}/${PN}-2.3.5-fix-tests.patch"
)

CABAL_CHDEPS=(
	'executable example' "executable ${PN}-example"
)

CABAL_TEST_REQUIRED_BINS=(
	"${PN}-example"
)

RDEPEND="
	dev-haskell/async:=[profile?]
	>=dev-haskell/optparse-applicative-0.3.1:=[profile?]
	dev-haskell/tagged:=[profile?]
	>=dev-haskell/tasty-1.3:=[profile?]
	dev-haskell/temporary:=[profile?]
	dev-haskell/typed-process:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? (
		dev-haskell/tasty-hunit
	)
"

src_configure() {
	if use examples || use test; then
		local example_flag=build-example
	else
		local example_flag=-build-example
	fi

	haskell-cabal_src_configure \
		--flag="${example_flag}"
}

src_install() {
	local components=(
		"lib:${PN}"
	)

	if use examples; then
		components+=(
			"exe:${PN}-example"
		)
	fi

	haskell-cabal_src_install "${components[@]}"
}

pkg_postinst() {
	if use examples; then
		elog "The example executable installed with this package (normally named 'example')"
		elog "has been renamed to '${PN}-example' to help prevent name collisions."
	fi

	haskell-cabal_pkg_postinst
}
