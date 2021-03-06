#!/usr/bin/env bash

set -e

VERSION=$(node -p "const { version } = require('./package.json'); version")

read -p "Releasing ${VERSION} - are you sure? (y/n)" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
    git checkout master

    # commit & push
    standard-version --tag-prefix "" --release-as ${VERSION}
    git push origin master

    # deploy
    npm run build
    npm run ghpages
fi
