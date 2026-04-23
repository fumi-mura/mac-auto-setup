#!/bin/bash

log() {
  printf '\n==> %s\n' "$1"
}

warn() {
  printf 'Warning: %s\n' "$1" >&2
}

error() {
  printf 'Error: %s\n' "$1" >&2
}
