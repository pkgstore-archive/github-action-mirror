## Git Repository Mirror

### Syntax

```yml
name: "Git Repo Mirror"

on:
  - push

jobs:
  mirror:
    runs-on: ubuntu-latest
    name: "Mirror"
    steps:
      - uses: pkgstore/github-actions-sync@main
        with:
          source: ${{ secrets.MIRROR_SOURCE_URL }}
          target: ${{ secrets.MIRROR_TARGET_URL }}
          username: ${{ secrets.MIRROR_USER_NAME }}
          token: ${{ secrets.MIRROR_USER_TOKEN }}
```
