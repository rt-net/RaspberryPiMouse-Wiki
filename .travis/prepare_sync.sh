#!/usr/bin/env bash

set -eu

mkdir -p ~/.ssh && touch ~/.ssh/config
echo -e "Host github.com\n\tStrictHostKeyChecking no\n\tIdentityFile ~/.ssh/id_rsa\n\tPort 22\n" >> ~/.ssh/config
openssl aes-256-cbc -K $encrypted_02c8af4b131a_key -iv $encrypted_02c8af4b131a_iv -in ./.travis/github_deploy_key.enc -out ./.travis/id_rsa -d
chmod 600 ./.travis/id_rsa
cp ./.travis/id_rsa ~/.ssh/
