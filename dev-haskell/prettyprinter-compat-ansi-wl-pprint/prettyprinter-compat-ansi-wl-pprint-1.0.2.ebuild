# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Drop-in compatibility package from ansi-wl-pprint to prettyprinter"
HOMEPAGE="https://github.com/quchen/prettyprinter"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-haskell/prettyprinter-1.7.0:=[profile?]
	>=dev-haskell/prettyprinter-ansi-terminal-1.1:=[profile?]
	>=dev-haskell/text-1.2:=[profile?]
	>=dev-lang/ghc-8.10.6:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.1.0
"
