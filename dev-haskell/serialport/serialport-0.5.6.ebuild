# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Cross platform serial port library"
HOMEPAGE="https://github.com/standardsemiconductor/serialport"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RESTRICT=test # test is not designed to be ran as cabal test

RDEPEND=">=dev-lang/ghc-9.6.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.10.1.0
	test? ( dev-haskell/hunit )
"
