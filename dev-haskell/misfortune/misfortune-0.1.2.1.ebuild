# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="fortune-mod clone"
HOMEPAGE="https://github.com/ncfavier/misfortune"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="executable"

PATCHES=(
	"${FILESDIR}/${PN}-0.1.2.1-add-executable-flag.patch"
)

RDEPEND="
	dev-haskell/cereal:=[profile?]
	dev-haskell/knob:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-haskell/random-fu-0.3:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
	executable? (
		dev-haskell/monad-loops:=[profile?]
		dev-haskell/regex-base:=[profile?]
		dev-haskell/regex-pcre:=[profile?]
	)
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag executable executable)
}
