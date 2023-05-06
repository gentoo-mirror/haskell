# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.1.9999
#hackport: flags: +newbase,+splitbase,+pkg-config
CABAL_HACKAGE_REVISION=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Replaces/Enhances Text.Regex"
HOMEPAGE="https://hackage.haskell.org/package/regex-pcre"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/fail-4.9:=[profile?] <dev-haskell/fail-4.10:=[profile?]
	>=dev-haskell/regex-base-0.94:=[profile?] <dev-haskell/regex-base-0.95:=[profile?]
	>=dev-lang/ghc-7.4.1:=[profile?]
	dev-libs/libpcre
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.12
	virtual/pkgconfig
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=newbase \
		--flag=pkg-config \
		--flag=splitbase
}
