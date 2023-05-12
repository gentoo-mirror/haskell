# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0.9999
#hackport: flags: -static,-lua53,-nightly

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Conversion between markup formats"
HOMEPAGE="https://pandoc.org"

LICENSE="GPL-2+"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="embed-data-files"

RESTRICT=test # one test case fails with newer deps

RDEPEND=">=dev-haskell/aeson-2.0.1.0:=[profile?] <dev-haskell/aeson-2.2:=[profile?]
	>=dev-haskell/aeson-pretty-0.8.9:=[profile?] <dev-haskell/aeson-pretty-0.9:=[profile?]
	>=dev-haskell/attoparsec-0.12:=[profile?] <dev-haskell/attoparsec-0.15:=[profile?]
	>=dev-haskell/base64-0.4:=[profile?] <dev-haskell/base64-0.5:=[profile?]
	>=dev-haskell/blaze-html-0.9:=[profile?] <dev-haskell/blaze-html-0.10:=[profile?]
	>=dev-haskell/blaze-markup-0.8:=[profile?] <dev-haskell/blaze-markup-0.9:=[profile?]
	>=dev-haskell/case-insensitive-1.2:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/citeproc-0.8.1:=[profile?] <dev-haskell/citeproc-0.9:=[profile?]
	>=dev-haskell/commonmark-0.2.2:=[profile?] <dev-haskell/commonmark-0.3:=[profile?]
	>=dev-haskell/commonmark-extensions-0.2.3.4:=[profile?] <dev-haskell/commonmark-extensions-0.3:=[profile?]
	>=dev-haskell/commonmark-pandoc-0.2.1.3:=[profile?] <dev-haskell/commonmark-pandoc-0.3:=[profile?]
	>=dev-haskell/connection-0.3.1:=[profile?]
	>=dev-haskell/data-default-0.4:=[profile?] <dev-haskell/data-default-0.8:=[profile?]
	>=dev-haskell/doclayout-0.4.0.1:=[profile?] <dev-haskell/doclayout-0.5:=[profile?]
	>=dev-haskell/doctemplates-0.11:=[profile?] <dev-haskell/doctemplates-0.12:=[profile?]
	>=dev-haskell/emojis-0.1:=[profile?] <dev-haskell/emojis-0.2:=[profile?]
	>=dev-haskell/file-embed-0.0:=[profile?] <dev-haskell/file-embed-0.1:=[profile?]
	>=dev-haskell/glob-0.7:=[profile?] <dev-haskell/glob-0.11:=[profile?]
	>=dev-haskell/gridtables-0.1:=[profile?] <dev-haskell/gridtables-0.2:=[profile?]
	>=dev-haskell/haddock-library-1.10:=[profile?] <dev-haskell/haddock-library-1.12:=[profile?]
	>=dev-haskell/http-client-0.4.30:=[profile?] <dev-haskell/http-client-0.8:=[profile?]
	>=dev-haskell/http-client-tls-0.2.4:=[profile?] <dev-haskell/http-client-tls-0.4:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/ipynb-0.2:=[profile?] <dev-haskell/ipynb-0.3:=[profile?]
	>=dev-haskell/jira-wiki-markup-1.5.1:=[profile?] <dev-haskell/jira-wiki-markup-1.6:=[profile?]
	>=dev-haskell/juicypixels-3.1.6.1:=[profile?] <dev-haskell/juicypixels-3.4:=[profile?]
	>=dev-haskell/mime-types-0.1.1:=[profile?] <dev-haskell/mime-types-0.2:=[profile?]
	>=dev-haskell/network-2.6:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.8:=[profile?]
	>=dev-haskell/pandoc-types-1.23:=[profile?] <dev-haskell/pandoc-types-1.24:=[profile?]
	>=dev-haskell/parsec-3.1:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/pretty-show-1.10:=[profile?] <dev-haskell/pretty-show-1.11:=[profile?]
	>=dev-haskell/random-1:=[profile?] <dev-haskell/random-1.3:=[profile?]
	>=dev-haskell/safe-0.3.18:=[profile?] <dev-haskell/safe-0.4:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/sha-1.6:=[profile?] <dev-haskell/sha-1.7:=[profile?]
	>=dev-haskell/skylighting-0.13.2.1:=[profile?] <dev-haskell/skylighting-0.14:=[profile?]
	>=dev-haskell/skylighting-core-0.13.2.1:=[profile?] <dev-haskell/skylighting-core-0.14:=[profile?]
	>=dev-haskell/split-0.2:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/syb-0.1:=[profile?] <dev-haskell/syb-0.8:=[profile?]
	>=dev-haskell/tagsoup-0.14.6:=[profile?] <dev-haskell/tagsoup-0.15:=[profile?]
	>=dev-haskell/temporary-1.1:=[profile?] <dev-haskell/temporary-1.4:=[profile?]
	>=dev-haskell/texmath-0.12.7:=[profile?] <dev-haskell/texmath-0.13:=[profile?]
	>=dev-haskell/text-1.1.1.0:=[profile?] <dev-haskell/text-2.1:=[profile?]
	>=dev-haskell/text-conversions-0.3:=[profile?] <dev-haskell/text-conversions-0.4:=[profile?]
	>=dev-haskell/unicode-collation-0.1.1:=[profile?] <dev-haskell/unicode-collation-0.2:=[profile?]
	>=dev-haskell/unicode-transforms-0.3:=[profile?] <dev-haskell/unicode-transforms-0.5:=[profile?]
	>=dev-haskell/xml-1.3.12:=[profile?] <dev-haskell/xml-1.4:=[profile?]
	>=dev-haskell/xml-conduit-1.9.1.1:=[profile?] <dev-haskell/xml-conduit-1.10:=[profile?]
	>=dev-haskell/xml-types-0.3:=[profile?] <dev-haskell/xml-types-0.4:=[profile?]
	>=dev-haskell/yaml-0.11:=[profile?] <dev-haskell/yaml-0.12:=[profile?]
	>=dev-haskell/zip-archive-0.4.3:=[profile?] <dev-haskell/zip-archive-0.5:=[profile?]
	>=dev-haskell/zlib-0.5:=[profile?] <dev-haskell/zlib-0.7:=[profile?]
	>=dev-lang/ghc-8.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
	test? ( >=dev-haskell/diff-0.2 <dev-haskell/diff-0.5
		>=dev-haskell/tasty-0.11 <dev-haskell/tasty-1.5
		>=dev-haskell/tasty-golden-2.3 <dev-haskell/tasty-golden-2.4
		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/tasty-quickcheck-0.8 <dev-haskell/tasty-quickcheck-0.11 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag embed-data-files embed_data_files) \
		--flag=-lua53 \
		--flag=-nightly \
		--flag=-static
}

src_install() {
	haskell-cabal_src_install
	doman "${S}/man/${PN}.1"
}

pkg_postinst() {
	einfo "As of version 3, ${PN} no longer packages the pandoc executable"
	einfo "as standard. For the executable, run 'emerge -av app-text/pandoc-cli'."
}
