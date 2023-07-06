#!/bin/sh

TAG=$1

if [ -z "$TAG" ]; then
  echo "TAG variable not set."
  exit 1
fi

docker build . -t $TAG --platform linux/amd64,linux/arm64,linux/arm/v7
