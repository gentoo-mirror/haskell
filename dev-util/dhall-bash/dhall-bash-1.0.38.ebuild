# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Compile Dhall to Bash"
HOMEPAGE="https://dhall-lang.org/
	https://hackage.haskell.org/package/dhall-bash"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="<dev-haskell/neat-interpolation-0.6:=[profile?]
	>=dev-haskell/optparse-generic-1.1.1:=[profile?] <dev-haskell/optparse-generic-1.5:=[profile?]
	<dev-haskell/shell-escape-0.3:=[profile?]
	>=dev-haskell/text-0.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/dhall-1.40.0:=[profile?] <dev-lang/dhall-1.41:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
