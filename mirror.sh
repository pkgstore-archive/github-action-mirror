#!/bin/bash

SOURCE="${1}"
TARGET="${2}"
USERNAME="${3}"
TOKEN="${4}"

git=$( command -v git )

mirror() {
  ${git} clone --mirror "${SOURCE}" '/root/git/source'  \
    && cd '/root/git/source' || exit
  ${git} remote add 'target' https://"${USERNAME}":"${TOKEN}"@"${TARGET#https://}"
  ${git} push -f --mirror 'target'
}

mirror

exit 0
