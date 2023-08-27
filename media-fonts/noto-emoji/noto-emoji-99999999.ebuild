EAPI=7

inherit font git-r3

MY_PN="noto-fonts-emoji-apple"

DESCRIPTION="Google Noto Emoji Fonts replaced with Apple branded emoji"
HOMEPAGE="https://gitlab.com/timescam/noto-fonts-emoji-apple https://forum.xda-developers.com/apps/magisk/magisk-ios-13-2-emoji-t3993487"
EGIT_REPO_URI="https://gitlab.com/timescam/noto-fonts-emoji-apple.git"

LICENSE="OFL-1.1"
SLOT="0"

FONT_S="${S}"
FONT_SUFFIX="ttf"
FONT_CONF=( 66-noto-color-emoji.conf )
DOCS=( README.md )
