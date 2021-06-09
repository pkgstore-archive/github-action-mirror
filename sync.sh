#!/bin/bash

SOURCE="${1}"
TARGET="${2}"
USERNAME="${3}"
TOKEN="${4}"

git clone --mirror "${SOURCE}" '/root/git/source' && cd '/root/git/source' || exit
git remote add 'target' https://"${USERNAME}":"${TOKEN}"@"${TARGET#https://}"
git push --mirror 'target'

exit 0
