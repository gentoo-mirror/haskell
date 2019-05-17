# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999
#hackport: flags: +small_base

CABAL_FEATURES="test-suite"
inherit haskell-cabal autotools

DESCRIPTION="Happy is a parser generator for Haskell"
HOMEPAGE="https://www.haskell.org/happy/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE="doc"

RDEPEND=">=dev-haskell/mtl-2.2.1:=
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8 <dev-haskell/cabal-2.6
	doc? ( ~app-text/docbook-xml-dtd-4.2
			app-text/docbook-xsl-stylesheets )
"

src_prepare() {
	default

	use doc && cd doc && eautoconf
}

src_configure() {
	# '--with-happy=false' allows detecting circular
	# depends even when 'happy' is installed in system
	haskell-cabal_src_configure \
		--with-happy=false\
		--flag=small_base

	if use doc; then
		# does not like out-of-source builds
		cd doc || die
		econf
	fi
}

src_compile() {
	haskell-cabal_src_compile

	if use doc; then
		emake -C doc -j1
	fi
}

src_test() {
	# workaround https://github.com/haskell/cabal/issues/2398
	emake -k -C tests all || die
}

src_install() {
	haskell-cabal_src_install
	if use doc; then
		cd doc || die
		dohtml -r happy/*
		doman "${S}/doc/happy.1"
	fi
}
