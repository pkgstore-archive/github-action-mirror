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
          source: ${{ secrets.SYNC_SOURCE_URL }}
          target: ${{ secrets.SYNC_TARGET_URL }}
          username: ${{ secrets.SYNC_USER_NAME }}
          token: ${{ secrets.SYNC_USER_TOKEN }}
```
