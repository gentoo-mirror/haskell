# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Wiki using happstack, git or darcs, and pandoc"
HOMEPAGE="https://hackage.haskell.org/package/gitit"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+plugins"

RDEPEND=">=dev-haskell/aeson-0.7:=[profile?] <dev-haskell/aeson-2.3:=[profile?]
	>=dev-haskell/base64-bytestring-0.1:=[profile?]
	>=dev-haskell/blaze-html-0.4:=[profile?] <dev-haskell/blaze-html-0.10:=[profile?]
	>=dev-haskell/configfile-1:=[profile?]
	>=dev-haskell/doctemplates-0.7.1:=[profile?]
	>=dev-haskell/feed-1.0:=[profile?] <dev-haskell/feed-1.4:=[profile?]
	>=dev-haskell/filestore-0.6.5:=[profile?] <dev-haskell/filestore-0.7:=[profile?]
	>=dev-haskell/happstack-server-7.5:=[profile?] <dev-haskell/happstack-server-7.9:=[profile?]
	>=dev-haskell/hoauth2-2.3.0:=[profile?] <dev-haskell/hoauth2-2.9:=[profile?]
	>=dev-haskell/hslogger-1:=[profile?]
	>=dev-haskell/hstringtemplate-0.8.8:=[profile?] <dev-haskell/hstringtemplate-0.9:=[profile?]
	>=dev-haskell/http-4000.0:=[profile?]
	>=dev-haskell/http-client-tls-0.2.2:=[profile?] <dev-haskell/http-client-tls-0.4:=[profile?]
	>=dev-haskell/http-conduit-2.1.6:=[profile?] <dev-haskell/http-conduit-2.4:=[profile?]
	>=dev-haskell/json-0.4:=[profile?] <dev-haskell/json-0.11:=[profile?]
	>=dev-haskell/network-2.6:=[profile?] <dev-haskell/network-3.2:=[profile?]
	>=dev-haskell/network-bsd-2.8.1:=[profile?] <dev-haskell/network-bsd-2.9:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?]
	dev-haskell/old-locale:=[profile?]
	dev-haskell/old-time:=[profile?]
	>=dev-haskell/pandoc-types-1.20:=[profile?] <dev-haskell/pandoc-types-1.24:=[profile?]
	dev-haskell/parsec:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-haskell/recaptcha-0.1:=[profile?]
	dev-haskell/safe:=[profile?]
	>dev-haskell/sha-1:=[profile?]
	>=dev-haskell/skylighting-0.8.2.3:=[profile?] <dev-haskell/skylighting-0.15:=[profile?]
	dev-haskell/split:=[profile?]
	dev-haskell/syb:=[profile?]
	>=dev-haskell/tagsoup-0.13:=[profile?] <dev-haskell/tagsoup-0.15:=[profile?]
	dev-haskell/temporary:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/uri-bytestring-0.2.3.3:=[profile?]
	>=dev-haskell/url-2.1:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-haskell/uuid-1.3:=[profile?] <dev-haskell/uuid-1.4:=[profile?]
	dev-haskell/xhtml:=[profile?]
	>=dev-haskell/xml-1.3.5:=[profile?]
	>=dev-haskell/xml-conduit-1.5:=[profile?] <dev-haskell/xml-conduit-1.10:=[profile?]
	>=dev-haskell/xml-types-0.3:=[profile?]
	>=dev-haskell/xss-sanitize-0.3:=[profile?] <dev-haskell/xss-sanitize-0.4:=[profile?]
	>=dev-haskell/zlib-0.5:=[profile?] <dev-haskell/zlib-0.7:=[profile?]
	>=dev-lang/ghc-8.8.1:=
	>=dev-haskell/pandoc-2.9:=[profile?] <dev-haskell/pandoc-3.2:=[profile?]
	plugins? ( dev-haskell/ghc-paths:=[profile?]
			dev-lang/ghc:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag plugins plugins)
}

CABAL_CHDEPS=(
	'skylighting >= 0.8.2.3 && < 0.14' 'skylighting >= 0.8.2.3'
)
