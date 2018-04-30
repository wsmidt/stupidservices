#!/bin/bash -e

THIS_SCRIPT=`dirname "$0"`
PROJECT_DIR=$THIS_SCRIPT/../../

cd $PROJECT_DIR
sbt docker:publish
cd - >/dev/null
