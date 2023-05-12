# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Process extras"
HOMEPAGE="https://github.com/seereason/process-extras"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	dev-haskell/data-default:=[profile?]
	>=dev-haskell/generic-deriving-1.10:=[profile?]
	>=dev-haskell/listlike-4.4:=[profile?]
	|| ( dev-lang/ghc dev-haskell/process[profile?] )
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? (
		dev-haskell/hunit
	)
"
