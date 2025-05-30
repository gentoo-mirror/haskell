# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A flexible Haskell source code pretty printer"
HOMEPAGE="https://github.com/ennocramer/floskell"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="executable"

CABAL_CHDEPS=(
	'base >=4.9 && <4.20' 'base >=4.9 && <4.22'
	'data-default >=0.7.1.1 && <0.8' 'data-default >=0.7.1.1 && <0.9'
)

PATCHES=(
	"${FILESDIR}/${PN}-0.10.7-add-executable-flag.patch"
)

RDEPEND="
	>=dev-haskell/aeson-0.11.3.0:=[profile?] <dev-haskell/aeson-2.3:=[profile?]
	>=dev-haskell/attoparsec-0.13.1.0:=[profile?] <dev-haskell/attoparsec-0.15:=[profile?]
	>=dev-haskell/attoparsec-aeson-2.1.0.0:=[profile?] <dev-haskell/attoparsec-aeson-2.3:=[profile?]
	>=dev-haskell/data-default-0.7.1.1:=[profile?] <dev-haskell/data-default-0.9:=[profile?]
	>=dev-haskell/haskell-src-exts-1.19:=[profile?] <dev-haskell/haskell-src-exts-1.24:=[profile?]
	>=dev-haskell/monad-dijkstra-0.1.1:=[profile?] <dev-haskell/monad-dijkstra-0.2:=[profile?]
	>=dev-haskell/text-1.2.2.2:=[profile?] <dev-haskell/text-2.2:=[profile?]
	>=dev-haskell/unordered-containers-0.2.8.0:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	executable? (
		>=dev-haskell/aeson-pretty-0.8.2:=[profile?] <dev-haskell/aeson-pretty-0.9:=[profile?]
		>=dev-haskell/ansi-wl-pprint-0.6.6:=[profile?] <dev-haskell/ansi-wl-pprint-1.1:=[profile?]
		>=dev-haskell/optparse-applicative-0.12.1.0:=[profile?] <dev-haskell/optparse-applicative-0.19:=[profile?]
	)
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? (
		>=dev-haskell/hspec-2.2.4 <dev-haskell/hspec-2.12
	)
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag executable executable)
}
