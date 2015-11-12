#!/bin/bash

if [ -e ./bin/local_variables.sh ];
then
    . ./bin/local_variables.sh
fi;

VERSION=${1:-42.0}
SNIPPET_HOST=${SNIPPET_HOST:-"https://snippets.mozilla.com"}

docker run -t -i -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -e SNIPPET_HOST=$SNIPPET_HOST firefox-${VERSION}
