#!/bin/sh

exec sudo docker run --rm=false -v `pwd`:/gct-docs:rw asciidoctor/docker-asciidoctor /bin/bash -xe /gct-docs/travis-ci/run_inside_docker.sh
