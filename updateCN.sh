#!/bin/sh

RED='\033[0;31m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'
COL='\033[0;34m'
END='\033[0m'

cd ~/projects/CartoonNetwork

echo "${COL}# - FETCHING...${END}"
git fetch upstream

echo "${RED}# - Stashing...${END}"
git stash

echo "${YELLOW}\n# - Rebasing...${END}"
git rebase upstream/develop

echo "${GREEN}\n# - Unstashing...${END}"
git stash pop