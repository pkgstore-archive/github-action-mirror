#!/bin/bash

SOURCE="${1}"
TARGET="${2}"
USERNAME="${3}"
TOKEN="${4}"

git clone "${SOURCE}" /root/git/source --origin source && cd /root/git/source
git remote add target https://"${USERNAME}":"${TOKEN}"@"${TARGET#https://}"
git push --mirror target

exit 0
