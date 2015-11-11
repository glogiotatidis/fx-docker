#!/bin/bash
set -xe
PREFS_PATH="/root/.mozilla/firefox/snippets.default/prefs.js"

export SNIPPET_HOST=${SNIPPET_HOST:-"http://127.0.0.1:8000"}
export SNIPPET_HOST_NO_PROTOCOL=`echo $ $SNIPPET_HOST | cut -d / -f 3`

cat $PREFS_PATH | envsubst | sponge $PREFS_PATH

./firefox --no-remote $@
