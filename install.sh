#!/bin/bash
set -eo pipefail

linux() {
	sudo curl -Lso \
		/usr/bin/shellcheck \
		https://github.com/caarlos0/shellcheck-docker/releases/download/v0.4.6/shellcheck
	sudo chmod +x /usr/bin/shellcheck
}

osx() {
	brew update >/dev/null
	brew install shellcheck
}

if [ "$(uname -s)" = "Darwin" ]; then
	osx
else
	linux
fi
