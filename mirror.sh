#!/bin/bash

SOURCE_REPO="${1}"
SOURCE_USER="${2}"
SOURCE_TOKEN="${3}"
TARGET_REPO="${4}"
TARGET_USER="${5}"
TARGET_TOKEN="${6}"

git="$( command -v git )"

mirror() {
  SOURCE="https://${SOURCE_USER}:${SOURCE_TOKEN}@${SOURCE_REPO#https://}"
  TARGET="https://${TARGET_USER}:${TARGET_TOKEN}@${TARGET_REPO#https://}"

  ${git} clone --mirror "${SOURCE}" '/root/git/source' \
    && cd '/root/git/source' || exit 1
  ${git} remote add 'target' "${TARGET}"
  ${git} push -f --mirror 'target'
}

mirror

exit 0
