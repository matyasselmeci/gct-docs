#!/bin/bash -e

apk add --no-cache ghostscript
cd latest
make

# vim:et:sw=4:sts=4:ts=8
