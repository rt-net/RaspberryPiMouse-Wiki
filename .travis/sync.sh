#!/usr/bin/env bash
set -eu

git config user.name "RT Corp."
git config user.email "shop@rt-net.jp"
git remote remove origin
git remote add origin https://$GITHUB_API_KEY@github.com/rt-net/RaspberryPiMouse-Wiki.git > /dev/null 2>&1
git remote add upstream https://$GITHUB_API_KEY@github.com/rt-net/RaspberryPiMouse.wiki.git > /dev/null 2>&1
git fetch origin
git fetch upstream
git merge upstream/master --no-edit
git push origin HEAD:master > /dev/null 2>&1
git push upstream HEAD:master > /dev/null 2>&1
