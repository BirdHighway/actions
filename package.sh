#!/bin/sh

whoami

echo "First arg: $1"
time=$(date)
echo "::set-output name=time::$time"
