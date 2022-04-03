#!/bin/sh

whoami

echo "First arg: $1"
git clone "https://$1@github.com/$GITHUB_REPOSITORY.git"
ls
time=$(date)
env
echo "::set-output name=time::$time"
