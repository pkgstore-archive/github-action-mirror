FROM alpine

LABEL "repository"="https://github.com/pkgstore/github-actions-sync"
LABEL "homepage"="http://pkgstore.github.io/"
LABEL "maintainer"="Kitsune Solar <kitsune.solar@gmail.com>"

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
