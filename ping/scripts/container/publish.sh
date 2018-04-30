#!/bin/bash -e

DOCKER_REPO=scarab/stupidservices/ping

docker push $DOCKER_REPO:latest 
