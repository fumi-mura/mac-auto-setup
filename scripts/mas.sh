#!/bin/bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# shellcheck source=./lib.sh
source "${SCRIPT_DIR}/lib.sh"

main() {
  if ! command -v mas >/dev/null 2>&1; then
    error "mas is not installed. Run 'make brew' first."
    exit 1
  fi

  log "Install App Store applications"
  mas install 937984704
  mas install 424390742
  mas install 424389933
  mas install 682658836
  mas install 6447125648
  mas install 634148309
  mas install 441258766
  mas install 434290957
  mas install 1230394683
  mas install 1429033973
}

main "$@"
