#!/bin/bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

# shellcheck source=./lib.sh
source "${SCRIPT_DIR}/lib.sh"

setup_brew_shellenv() {
  if [[ -x /opt/homebrew/bin/brew ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
    return
  fi

  if [[ -x /usr/local/bin/brew ]]; then
    eval "$(/usr/local/bin/brew shellenv)"
  fi
}

ensure_homebrew() {
  if command -v brew >/dev/null 2>&1; then
    setup_brew_shellenv
    return
  fi

  log "Install Homebrew"
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  setup_brew_shellenv
}

main() {
  ensure_homebrew

  log "Install Homebrew packages"
  brew bundle --file="${ROOT_DIR}/Brewfile"

  log "Link dotfiles"
  "${SCRIPT_DIR}/link.sh"

  log "Install App Store applications"
  "${SCRIPT_DIR}/mas.sh"

  log "Apply macOS settings"
  "${SCRIPT_DIR}/macos.sh"
}

main "$@"
