#!/bin/bash -e

DOCKER_REPO=stupidservices/ping

THIS_SCRIPT=`dirname "$0"`
PROJECT_DIR=$THIS_SCRIPT/../../

cd $PROJECT_DIR
docker build -t $DOCKER_REPO:latest .
cd - >/dev/null
