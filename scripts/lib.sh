#!/bin/bash

set -euo pipefail

log() {
  printf '\n==> %s\n' "$1"
}

warn() {
  printf 'Warning: %s\n' "$1" >&2
}

error() {
  printf 'Error: %s\n' "$1" >&2
}

ensure_directory() {
  local dir_path="$1"
  local current_path=""
  local part

  IFS='/' read -r -a parts <<< "${dir_path}"
  if [[ "${dir_path}" == /* ]]; then
    current_path="/"
  fi

  for part in "${parts[@]}"; do
    if [[ -z "${part}" ]]; then
      continue
    fi

    if [[ "${current_path}" == "/" ]]; then
      current_path="${current_path}${part}"
    elif [[ -z "${current_path}" ]]; then
      current_path="${part}"
    else
      current_path="${current_path}/${part}"
    fi

    if [[ -L "${current_path}" && ! -d "${current_path}" ]]; then
      rm -f "${current_path}"
    fi

    if [[ -e "${current_path}" && ! -d "${current_path}" ]]; then
      error "${current_path} exists and is not a directory."
      exit 1
    fi

    mkdir -p "${current_path}"
  done
}
