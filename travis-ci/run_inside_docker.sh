#!/bin/bash -e

apk add --no-cache ghostscript
cd /gct-docs/latest
find . -type f -name \*.adoc | \
    while read line; do
        rm -f ${line%.adoc}.html
done
make

# vim:et:sw=4:sts=4:ts=8
