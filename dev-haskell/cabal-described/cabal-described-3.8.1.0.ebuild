# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_PN="Cabal-described"

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Described functionality for types in Cabal"
HOMEPAGE="https://github.com/haskell/cabal#readme"

GIT_REPO="https://github.com/haskell/cabal"
GIT_COMMIT="5d18b763356dca719f5286a52328cb41b9fa4192"
GIT_P="cabal-${GIT_COMMIT}"

SRC_URI="${GIT_REPO}/archive/${GIT_COMMIT}.tar.gz -> ${GIT_P}.tar.gz"

S="${WORKDIR}/${GIT_P}/${CABAL_PN}"
CABAL_FILE="${S}/${CABAL_PN}.cabal"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-haskell/cabal-3.8.0.0:=[profile?] <dev-haskell/cabal-3.9:=[profile?]
	>=dev-haskell/cabal-syntax-3.8.0.0:=[profile?] <dev-haskell/cabal-syntax-3.9:=[profile?]
	dev-haskell/quickcheck:=[profile?]
	>=dev-haskell/rere-0.1:=[profile?] <dev-haskell/rere-0.3:=[profile?]
	dev-haskell/tasty:=[profile?]
	dev-haskell/tasty-quickcheck:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"
