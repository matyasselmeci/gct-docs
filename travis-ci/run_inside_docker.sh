#!/bin/bash -e

apk add --no-cache ghostscript
cd /gct-docs/latest
# There's no make clean so do it by hand
set +x
find . -type f -name \*.adoc | \
    while read line; do
        html=${line%.adoc}.html
        rm -vf "$html"
done
set -x
make
# Validate
set +x
set +e
find . -type f -name \*.adoc -not -name \*_Frag.adoc -not -name \*_frag.adoc | \
    while read line; do
        html=${line%.adoc}.html
        ls -l "$html"
done

# vim:et:sw=4:sts=4:ts=8
