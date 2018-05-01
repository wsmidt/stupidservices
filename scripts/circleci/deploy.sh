#!/bin/bash -e

THIS_SCRIPT=`dirname "$0"`

ecs-cli compose --project-name ping --region us-west-1 --cluster stupidservices --file $THIS_SCRIPT/files/docker-compose.yml service start
