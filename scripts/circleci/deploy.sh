#!/bin/bash -e

THIS_SCRIPT=`dirname "$0"`

VERSION=$1

if [ -z "$VERSION" ]; then
  echo "Usage: $0 VERSION"
  exit 1
fi

#TODO: we really should have many versions here. right now theres one version so we have to do a
#      build of all the services to get an updated version to deploy out.
export SSERVICES_TAG_VERSION=$VERSION
ecs-cli compose --project-name ping --region us-west-1 --cluster stupidservices --file $THIS_SCRIPT/files/docker-compose.yml service up
