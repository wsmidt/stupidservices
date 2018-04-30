#!/bin/bash -e

## TODO curl can nont connect in circleci but will localy
#       return to investigate this...
#
#DOCKER_REPO=scarab/stupidservices/ping
#
## start the container
#docker run -p 8080:80 -d $DOCKER_REPO:latest 
#
## curl the endpoint
#RESULT=`curl localhost:8080/ping`
#
## validate the result
#if [ "$RESULT" = "pong" ]; then
#  echo "ping succeeded with a pong!"
#else
#  echo "ping failed! expected pong but recieved: $RESULT"
#  exit 1
#fi
