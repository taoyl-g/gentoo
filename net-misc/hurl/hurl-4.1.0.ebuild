# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.10

EAPI=8

CRATES="
	adler32@1.2.0
	ahash@0.8.3
	aho-corasick@1.1.1
	alloc-no-stdlib@2.0.4
	alloc-stdlib@0.2.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstream@0.5.0
	anstyle-parse@0.2.1
	anstyle-query@1.0.0
	anstyle-wincon@2.1.0
	anstyle@1.0.3
	autocfg@1.1.0
	base64@0.21.4
	bit-set@0.5.3
	bit-vec@0.6.3
	bitflags@1.3.2
	bitflags@2.4.0
	block-buffer@0.10.4
	brotli-decompressor@2.3.4
	brotli@3.3.4
	bumpalo@3.14.0
	byteorder@1.4.3
	cc@1.0.83
	cfg-if@1.0.0
	chrono@0.4.31
	clap@4.4.4
	clap_builder@4.4.4
	clap_lex@0.5.1
	colorchoice@1.0.0
	colored@2.0.4
	core-foundation-sys@0.8.4
	core2@0.4.0
	cpufeatures@0.2.9
	crc32fast@1.3.2
	crypto-common@0.1.6
	curl-sys@0.4.66+curl-8.3.0
	curl@0.4.44
	dary_heap@0.3.6
	digest@0.10.7
	encoding-index-japanese@1.20141219.5
	encoding-index-korean@1.20141219.5
	encoding-index-simpchinese@1.20141219.5
	encoding-index-singlebyte@1.20141219.5
	encoding-index-tradchinese@1.20141219.5
	encoding@0.2.33
	encoding_index_tests@0.1.4
	errno-dragonfly@0.1.2
	errno@0.3.3
	fastrand@2.0.0
	float-cmp@0.9.0
	fnv@1.0.7
	form_urlencoded@1.2.0
	generic-array@0.14.7
	getrandom@0.2.10
	glob@0.3.1
	hashbrown@0.12.3
	hashbrown@0.13.2
	hermit-abi@0.3.3
	hex-literal@0.4.1
	hex@0.4.3
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.57
	idna@0.4.0
	indexmap@1.9.3
	is-terminal@0.4.9
	itoa@1.0.9
	js-sys@0.3.64
	lazy_static@1.4.0
	libc@0.2.148
	libflate@2.0.0
	libflate_lz77@2.0.0
	libm@0.2.7
	libxml@0.3.3
	libz-sys@1.1.12
	linux-raw-sys@0.4.7
	log@0.4.20
	md5@0.7.0
	memchr@2.6.3
	num-traits@0.2.16
	numtoa@0.1.0
	once_cell@1.18.0
	openssl-probe@0.1.5
	openssl-src@300.1.5+3.1.3
	openssl-sys@0.9.93
	percent-encoding@2.3.0
	pkg-config@0.3.27
	ppv-lite86@0.2.17
	proc-macro2@1.0.67
	proptest@1.2.0
	quick-error@1.2.3
	quote@1.0.33
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rand_xorshift@0.3.0
	redox_syscall@0.2.16
	redox_syscall@0.3.5
	redox_termios@0.1.2
	regex-automata@0.3.8
	regex-syntax@0.6.29
	regex-syntax@0.7.5
	regex@1.9.5
	rle-decode-fast@1.0.3
	rustix@0.38.14
	rusty-fork@0.3.0
	ryu@1.0.15
	schannel@0.1.22
	serde@1.0.188
	serde_derive@1.0.188
	serde_json@1.0.107
	sha2@0.10.7
	socket2@0.4.9
	strsim@0.10.0
	syn@2.0.37
	tempfile@3.8.0
	terminal_size@0.3.0
	termion@2.0.1
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	toml@0.5.11
	typenum@1.17.0
	unarray@0.1.4
	unicode-bidi@0.3.13
	unicode-ident@1.0.12
	unicode-normalization@0.1.22
	url@2.4.1
	utf8parse@0.2.1
	uuid@1.4.1
	vcpkg@0.2.15
	version_check@0.9.4
	wait-timeout@0.2.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.87
	wasm-bindgen-macro-support@0.2.87
	wasm-bindgen-macro@0.2.87
	wasm-bindgen-shared@0.2.87
	wasm-bindgen@0.2.87
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-sys@0.48.0
	windows-targets@0.48.5
	windows@0.48.0
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_msvc@0.48.5
	windows_i686_gnu@0.48.5
	windows_i686_msvc@0.48.5
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_msvc@0.48.5
	winres@0.1.12
	xml-rs@0.8.18
	xmltree@0.10.3
"

inherit cargo

DESCRIPTION="Hurl, run and test HTTP requests"
HOMEPAGE="https://hurl.dev"
SRC_URI="
	https://github.com/Orange-OpenSource/${PN}/archive/refs/tags/${PV}.tar.gz -> ${PN}-${PV}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="Apache-2.0"
# Dependent crate licenses
LICENSE+="
	BSD CC0-1.0 MIT MPL-2.0 Unicode-DFS-2016 ZLIB
	|| ( Apache-2.0 Boost-1.0 )
"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	net-misc/curl
	dev-libs/libxml2
"
DEPEND="${RDEPEND}"

# Rust.
QA_FLAGS_IGNORED=(
	/usr/bin/hurl
	/usr/bin/hurlfmt
)

QA_PRESTRIPPED="${QA_FLAGS_IGNORED[*]}"

src_install() {
	dobin target/release/hurl{,fmt}
	doman docs/manual/hurl{,fmt}.1

	dodoc CHANGELOG.md README.md LICENSE
}
