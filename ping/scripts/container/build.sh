#!/bin/bash -e

DOCKER_REPO=stupidservices/ping

THIS_SCRIPT=`dirname "$0"`
PROJECT_DIR=$THIS_SCRIPT/../../

VERSION=$1

if [ -z $VERSION ]; then
  echo "Usage: $0 VERSION"
  echo "  example: $0 6669"
  echo "    produces the container $DOCKER_REPO:6669"
  exit 1
fi

cd $PROJECT_DIR
docker build -t $DOCKER_REPO:$VERSION .
cd - >/dev/null
