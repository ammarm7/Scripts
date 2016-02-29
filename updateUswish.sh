#!/bin/bash
BRANCH=turner_develop

if [ $# -gt 0 ]; then
  BRANCH=$1
fi

cd ${HOME}/projects/uswish
git fetch --depth=1 upstream $BRANCH
git reset --hard
git checkout upstream/$BRANCH
