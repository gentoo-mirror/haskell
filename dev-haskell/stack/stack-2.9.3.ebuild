# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.1
#hackport: flags: -disable-git-info,-hide-dependency-versions,-integration-tests,-static,-supported-build,-developer-mode

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="The Haskell Tool Stack"
HOMEPAGE="https://haskellstack.org"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

PATCHES=(
	"${FILESDIR}/${PN}-2.9.3-disable-network-tests.patch"
)

RDEPEND="
	>=dev-haskell/aeson-2.0.3.0:=[profile?]
	dev-haskell/annotated-wl-pprint:=[profile?]
	dev-haskell/ansi-terminal:=[profile?]
	dev-haskell/async:=[profile?]
	dev-haskell/attoparsec:=[profile?]
	dev-haskell/base64-bytestring:=[profile?]
	>=dev-haskell/cabal-3.6.3.0:=[profile?]
	dev-haskell/casa-client:=[profile?]
	dev-haskell/casa-types:=[profile?]
	dev-haskell/colour:=[profile?]
	dev-haskell/conduit:=[profile?]
	dev-haskell/conduit-extra:=[profile?]
	dev-haskell/cryptonite:=[profile?]
	dev-haskell/cryptonite-conduit:=[profile?]
	dev-haskell/echo:=[profile?]
	dev-haskell/extra:=[profile?]
	dev-haskell/file-embed:=[profile?]
	dev-haskell/filelock:=[profile?]
	>=dev-haskell/fsnotify-0.4.1:=[profile?]
	dev-haskell/generic-deriving:=[profile?]
	dev-haskell/githash:=[profile?]
	dev-haskell/hackage-security:=[profile?]
	dev-haskell/hashable:=[profile?]
	dev-haskell/hi-file-parser:=[profile?]
	dev-haskell/hpack:=[profile?]
	dev-haskell/http-client:=[profile?]
	dev-haskell/http-client-tls:=[profile?]
	dev-haskell/http-conduit:=[profile?]
	dev-haskell/http-download:=[profile?]
	dev-haskell/http-types:=[profile?]
	dev-haskell/memory:=[profile?]
	dev-haskell/microlens:=[profile?]
	dev-haskell/mintty:=[profile?]
	dev-haskell/mono-traversable:=[profile?]
	dev-haskell/mustache:=[profile?]
	dev-haskell/neat-interpolation:=[profile?]
	dev-haskell/network-uri:=[profile?]
	dev-haskell/open-browser:=[profile?]
	>=dev-haskell/optparse-applicative-0.17.0.0:=[profile?]
	dev-haskell/optparse-simple:=[profile?]
	>=dev-haskell/pantry-0.8.1:=[profile?]
	dev-haskell/path:=[profile?]
	dev-haskell/path-io:=[profile?]
	>=dev-haskell/persistent-2.13.3.5:=[profile?] <dev-haskell/persistent-2.14:=[profile?]
	dev-haskell/persistent-sqlite:=[profile?]
	dev-haskell/persistent-template:=[profile?]
	dev-haskell/primitive:=[profile?]
	dev-haskell/project-template:=[profile?]
	dev-haskell/random:=[profile?]
	dev-haskell/retry:=[profile?]
	>=dev-haskell/rio-0.1.22.0:=[profile?]
	>=dev-haskell/rio-prettyprint-0.1.4.0:=[profile?]
	dev-haskell/semigroups:=[profile?]
	dev-haskell/split:=[profile?]
	dev-haskell/stm:=[profile?]
	dev-haskell/streaming-commons:=[profile?]
	dev-haskell/tar:=[profile?]
	dev-haskell/temporary:=[profile?]
	dev-haskell/text-metrics:=[profile?]
	dev-haskell/th-reify-many:=[profile?]
	dev-haskell/tls:=[profile?]
	dev-haskell/typed-process:=[profile?]
	dev-haskell/unicode-transforms:=[profile?]
	dev-haskell/unix-compat:=[profile?]
	dev-haskell/unliftio:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/vector:=[profile?]
	dev-haskell/yaml:=[profile?]
	dev-haskell/zip-archive:=[profile?]
	dev-haskell/zlib:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? (
		dev-haskell/hspec
		dev-haskell/quickcheck
		dev-haskell/raw-strings-qq
		dev-haskell/smallcheck
	)
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-developer-mode \
		--flag=-disable-git-info \
		--flag=-hide-dependency-versions \
		--flag=-integration-tests \
		--flag=-static \
		--flag=-supported-build
}
