#!/bin/sh

whoami

echo "First arg: $1"
git config -l
URL="https://$1@github.com/$GITHUB_REPOSITORY.git"
echo "URL: $URL"
git clone "$URL"
ls
time=$(date)
env
echo "::set-output name=time::$time"
