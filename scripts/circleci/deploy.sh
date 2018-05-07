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
#NOTE: the service is first stopped because im cheap and only running with a single instance. if
#        the service is not stopped it will run into a port conflict since ecs wont have another
#        place to deploy and swap out the container. TODO i want to change this so that each service
#        has its own compose file rather than having all the services in a single one. this way
#        I can halve the instance size and get 2 and have the workload distributed and achieve the
#        same thing without having an outage.
ecs-cli compose --project-name ping --region us-west-1 --cluster stupidservices --file $THIS_SCRIPT/files/docker-compose.yml service stop --timeout 1
ecs-cli compose --project-name ping --region us-west-1 --cluster stupidservices --file $THIS_SCRIPT/files/docker-compose.yml service up --timeout 1
