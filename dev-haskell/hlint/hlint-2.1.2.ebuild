# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal elisp-common

DESCRIPTION="Source code suggestions"
HOMEPAGE="https://github.com/ndmitchell/hlint#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="emacs +gpl"

RDEPEND=">=dev-haskell/aeson-1.1.2.0:=[profile?]
	>=dev-haskell/ansi-terminal-0.6.2:=[profile?]
	>=dev-haskell/cmdargs-0.10:=[profile?]
	>=dev-haskell/cpphs-1.20.1:=[profile?]
	>=dev-haskell/data-default-0.3:=[profile?]
	>=dev-haskell/extra-1.6.6:=[profile?]
	>=dev-haskell/haskell-src-exts-1.20:=[profile?] <dev-haskell/haskell-src-exts-1.21:=[profile?]
	>=dev-haskell/haskell-src-exts-util-0.2.1.2:=[profile?]
	>=dev-haskell/refact-0.3:=[profile?]
	>=dev-haskell/semigroups-0.18:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/uniplate-1.5:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-haskell/yaml-0.5.0:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	gpl? ( >=dev-haskell/hscolour-1.21:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

SITEFILE="60${PN}-gentoo.el"

src_configure() {
	local threaded_flag=""
	if $(ghc-supports-threaded-runtime); then
		threaded_flag="--flags=threaded"
	else
		threaded_flag="--flags=-threaded"
	fi

	haskell-cabal_src_configure \
		$(cabal_flag gpl gpl) \
		$threaded_flag
}

src_compile() {
	cabal_src_compile

	use emacs && elisp-compile data/hs-lint.el
}

src_install() {
	cabal_src_install

	if use emacs; then
		elisp-install ${PN} data/*.el data/*.elc || die "elisp-install failed."
		elisp-site-file-install "${FILESDIR}/${SITEFILE}"
	fi

	doman data/hlint.1
}

pkg_postinst() {
	haskell-cabal_pkg_postinst
	use emacs && elisp-site-regen
}

pkg_postrm() {
	haskell-cabal_pkg_postrm
	use emacs && elisp-site-regen
}
