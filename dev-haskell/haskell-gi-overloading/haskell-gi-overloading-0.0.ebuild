# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile"
inherit haskell-cabal

DESCRIPTION="Overloading support for haskell-gi"
HOMEPAGE="https://github.com/haskell-gi/haskell-gi"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

# Note: If =dev-haskell/haskell-gi-overloading-1.0 was to be merged, then
# this would require introducing a USE="overloaded" flag to all the
# dev-haskell/gi-* packages, which would have to be used to select the
# correct package:
#	overloaded? ( =dev-haskell/haskell-gi-overloading-1.0:=[profile?] )
#	!overloaded? ( =dev-haskell/haskell-gi-overloading-0.0:=[profile?] )
# And app-editors/leksah would have to be altered to require the packages
# without overloaded, something like:
# >=dev-haskell/gi-cairo-1.0.6:=[!overloaded, profile?] <dev-haskell/gi-cairo-1.1:=[!overloaded, profile?]
# >=dev-haskell/gi-gdk-3.0.6:=[!overloaded, profile?] <dev-haskell/gi-gdk-3.1:=[!overloaded, profile?]
# >=dev-haskell/gi-gdkpixbuf-2.0.6:=[!overloaded, profile?] <dev-haskell/gi-gdkpixbuf-2.1:=[!overloaded, profile?]
# >=dev-haskell/gi-gio-2.0.6:=[!overloaded, profile?] <dev-haskell/gi-gio-2.1:=[!overloaded, profile?]
# >=dev-haskell/gi-glib-2.0.6:=[!overloaded, profile?] <dev-haskell/gi-glib-2.1:=[!overloaded, profile?]
# >=dev-haskell/gi-gobject-2.0.6:=[!overloaded, profile?] <dev-haskell/gi-gobject-2.1:=[!overloaded, profile?]
# >=dev-haskell/gi-gtk-3.0.13:=[!overloaded, profile?] <dev-haskell/gi-gtk-3.1:=[!overloaded, profile?]
# >=dev-haskell/gi-gtk-hs-0.3.1.0:=[!overloaded, profile?] <dev-haskell/gi-gtk-hs-0.4:=[!overloaded, profile?]
# >=dev-haskell/gi-gtksource-3.0.6:=[!overloaded, profile?] <dev-haskell/gi-gtksource-3.1:=[!overloaded, profile?]
# >=dev-haskell/gi-pango-1.0.6:=[!overloaded, profile?] <dev-haskell/gi-pango-1.1:=[!overloaded, profile?]
# >=dev-haskell/gi-webkit2-4.0.6:=[!overloaded, profile?] <dev-haskell/gi-webkit2-4.1:=[!overloaded, profile?]
#
# This is upstream's workaround for a ghc 8.2.2 panic:
#
# https://ghc.haskell.org/trac/ghc/ticket/14382
#
# And it is upstream's workaround for leksah to build:
#
# https://ghc.haskell.org/trac/ghc/ticket/14382
