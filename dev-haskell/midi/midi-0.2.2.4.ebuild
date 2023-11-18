# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Handling of MIDI messages and files"
HOMEPAGE="https://wiki.haskell.org/MIDI"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/event-list-0.0.9:=[profile?] <dev-haskell/event-list-0.2:=[profile?]
	>=dev-haskell/explicit-exception-0.1:=[profile?] <dev-haskell/explicit-exception-0.3:=[profile?]
	>=dev-haskell/monoid-transformer-0.0.4:=[profile?] <dev-haskell/monoid-transformer-0.1:=[profile?]
	>=dev-haskell/non-negative-0.0.1:=[profile?] <dev-haskell/non-negative-0.2:=[profile?]
	>=dev-haskell/quickcheck-2.1:=[profile?] <dev-haskell/quickcheck-3:=[profile?]
	>=dev-haskell/random-1:=[profile?] <dev-haskell/random-2:=[profile?]
	>=dev-haskell/semigroups-0.1:=[profile?] <dev-haskell/semigroups-1.0:=[profile?]
	>=dev-haskell/utility-ht-0.0.10:=[profile?] <dev-haskell/utility-ht-0.1:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
