#!/bin/sh

whoami

echo "First arg: $1"
time=$(date)
env
echo "::set-output name=time::$time"
