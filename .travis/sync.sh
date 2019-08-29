#!/usr/bin/env bash
set -eux

git config --local user.name "RT Corp."
git config --local user.email "shop@rt-net.jp"
git remote add upstream git@github.com:rt-net/RaspberryPiMouse.wiki.git > /dev/null 2>&1
git fetch origin
git fetch upstream
git merge upstream/master --no-edit
git push upstream HEAD:master > /dev/null 2>&1
