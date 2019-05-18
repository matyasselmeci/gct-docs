#!/bin/sh

exec sudo docker run --rm=false -v `pwd`:/gct-docs:rwZ ${IMAGE} /bin/bash -xe /gct-docs/travis-ci/run_inside_docker.sh

