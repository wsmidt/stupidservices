#!/bin/bash -e

DOCKER_REPO=stupidservices/ping

VERSION=$1

if [ -z $VERSION ]; then
  echo "Usage: $0 VERSION"
  echo "  example: $0 6669"
  echo "    pushes the container $DOCKER_REPO:6669"
  exit 1
fi

docker push $DOCKER_REPO:$VERSION
