#!/bin/bash -e

THIS_SCRIPT=`dirname "$0"`
PROJECT_DIR=$THIS_SCRIPT/../../

cd $PROJECT_DIR
# start built container localy
# run integ tests on container
cd - >/dev/null
