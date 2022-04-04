#!/bin/sh

whoami

echo "First arg: $1"
git config user.email
git config -l
URL="https://github.com/$GITHUB_REPOSITORY.git"
echo "URL: $URL"
git clone "$URL"
ls
cd cli
npm install
npx oclif-dev pack:deb
time=$(date)
env
echo "::set-output name=time::$time"
