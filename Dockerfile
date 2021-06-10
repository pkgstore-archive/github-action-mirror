FROM alpine

LABEL "name"="Git Repo Mirror"
LABEL "description"="Universal mirroring repository tool."
LABEL "maintainer"="Kitsune Solar <kitsune.solar@gmail.com>"
LABEL "repository"="https://github.com/pkgstore/github-actions-mirror.git"
LABEL "homepage"="http://pkgstore.github.io/"

LABEL "com.github.actions.name"="Git Repo Mirror"
LABEL "com.github.actions.description"="Universal mirroring repository tool."
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="gray-dark"

COPY *.sh /
RUN apk add --no-cache bash git git-lfs

ENTRYPOINT ["/entrypoint.sh"]
