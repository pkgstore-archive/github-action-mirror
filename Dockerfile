FROM alpine

LABEL "repository"="https://github.com/pkgstore/github-actions-sync"
LABEL "homepage"="http://pkgstore.github.io/"
LABEL "maintainer"="Kitsune Solar <kitsune.solar@gmail.com>"

RUN apk add --no-cache bash git git-lfs

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
