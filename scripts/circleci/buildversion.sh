#!/bin/bash -e

#first 5 chars of the git sha
#  Note : when using circleci workflows they do not expose the build id.
#          therefore we use the git sha as the version
#  TODO : on non master branch "dev" branches include the user name in the version
#           so we can track and deploy our own dev envs seperate from prod.
echo ${CIRCLE_SHA1:0:7}
