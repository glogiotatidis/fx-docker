#!/bin/bash

if [ -e ./bin/local_variables.sh ];
then
    . ./bin/local_variables.sh
fi;

VERSION=${1:-50.0}
SNIPPET_HOST=${SNIPPET_HOST:-"https://snippets.mozilla.com"}
SNIPPET_PRODUCT_NAME=${SNIPPET_PRODUCT_NAME:-"%NAME%"}

docker run --net=host -t -i -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -e SNIPPET_HOST=$SNIPPET_HOST -e SNIPPET_PRODUCT_NAME giorgos/fx-docker:firefox-${VERSION}
