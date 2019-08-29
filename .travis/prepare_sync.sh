#!/usr/bin/env bash

set -eu

mkdir -p ~/.ssh && touch ~/.ssh/config
echo -e "Host github.com\n\tStrictHostKeyChecking no\n\tIdentityFile ~/.ssh/id_rsa1\n\tPort 22\n" >> ~/.ssh/config
echo -e "Host source-of-wiki\n\tHostName github.com\n\tUser git\n\tStrictHostKeyChecking no\n\tIdentityFile ~/.ssh/id_rsa2\n\tPort 22\n" >> ~/.ssh/config
openssl aes-256-cbc -K ${encrypted_02c8af4b131a_key} -iv ${encrypted_02c8af4b131a_iv} -in ./.travis/github_deploy_key-RaspberryPiMouse.enc -out ./.travis/id_rsa1 -d
openssl aes-256-cbc -K ${encrypted_2416eb8025b0_key} -iv ${encrypted_2416eb8025b0_iv} -in ./.travis/github_deploy_key-RaspberryPiMouse-Wiki.enc -out ./.travis/id_rsa2 -d
chmod 600 ./.travis/id_rsa*
cp ./.travis/id_rsa* ~/.ssh/
