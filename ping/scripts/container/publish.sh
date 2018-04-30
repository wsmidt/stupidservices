#!/bin/bash -e

DOCKER_REPO=stupidservices/ping

docker push $DOCKER_REPO:latest 
