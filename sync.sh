#!/bin/sh

set -e

USERNAME="${1}"
TOKEN="${2}"
URL="${3}"

git remote add sync_storage https://"${USERNAME}":"${TOKEN}"@"${URL#https://}"
git push -f --all sync_storage
