# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
CABAL_HACKAGE_REVISION="2"
inherit haskell-cabal

DESCRIPTION="Efficient hash-consing for arbitrary data types"
HOMEPAGE="https://github.com/ekmett/intern/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz
	https://hackage.haskell.org/package/${P}/revision/${CABAL_HACKAGE_REVISION}.cabal
		-> ${P}-rev${CABAL_HACKAGE_REVISION}.cabal"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/hashable-1.1:=[profile?] <dev-haskell/hashable-1.5:=[profile?]
	>=dev-haskell/unordered-containers-0.2.1:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
BDEPEND="app-text/dos2unix"

src_prepare() {
	# pull revised cabal from upstream
	cp "${DISTDIR}/${P}-rev${CABAL_HACKAGE_REVISION}.cabal" "${S}/${PN}.cabal" || die

	# Convert to unix line endings
	dos2unix "${S}/${PN}.cabal" || die

	# Apply patches *after* pulling the revised cabal
	default
}
