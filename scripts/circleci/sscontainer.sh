#!/bin/bash -e

THIS_SCRIPT=`dirname "$0"`
REPO_ROOT=$THIS_SCRIPT/../../

ACTION=$1
SERVICE=$2
VERSION=$3

if [ -z "$ACTION" ] || [ -z "$SERVICE" ] || [ -z "$VERISON" ]; then
  echo "Usage: $0 ACTION SERVICE VERSION"
  exit 1
fi

if ! [[ "$ACTION" =~ ^(build|test|publish)$ ]]; then
  echo "Error $ACTION is not a valid action."
  echo "Possible valid actions are:"
  echo "build"
  echo "test"
  echo "publish"
  exit 1
fi

SERVICE_SCRIPT=$REPO_ROOT/$SERVICE/scripts/container/$ACTION.sh

if [ ! -f "$SERVICE_SCRIPT" ]; then
  echo "Error: $SERVICE is not a valid service."
  echo "Possible valid services are:"
  cd $REPO_ROOT
  echo "$(ls */scripts/container/$ACTION.sh | cut -f1 -d/)" 
  cd - >/dev/null
  exit 1
fi

$SERVICE_SCRIPT $VERSION
