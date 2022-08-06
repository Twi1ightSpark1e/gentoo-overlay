# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit unpacker

DESCRIPTION="A client-optimized language for fast apps on any platform"
HOMEPAGE="https://dart.dev/"
SRC_URI="https://storage.googleapis.com/dart-archive/channels/stable/release/${PV}/linux_packages/dartsdk-linux-x64-release.zip"

LICENSE="BSD"
RESTRICT="strip mirror"
SLOT="0"
KEYWORDS="~amd64"

S="${WORKDIR}/dart-sdk"

src_install() {
	local BASEDIR="/opt"

	insinto "${BASEDIR}"
	doins -r "${S}/"

	exeinto "${BASEDIR}/dart-sdk/bin"
	for exe in dart dart2js dartanalyzer dartaotruntime dartdevc; do
		doexe "${S}/bin/${exe}"
	done

	exeinto "${BASEDIR}/dart-sdk/bin/utils"
	doexe "${S}/bin/utils/gen_snapshot"

	dosym "${BASEDIR}/dart-sdk/bin/dart" "/usr/bin/dart"
}
