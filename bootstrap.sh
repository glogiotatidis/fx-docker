#!/bin/bash
set -xe
PREFS_PATH="/root/.mozilla/firefox/snippets.default/prefs.js"

export SNIPPET_HOST=${SNIPPET_HOST:-"https://snippets.mozilla.com"}
export SNIPPET_HOST_NO_PROTOCOL=`echo $SNIPPET_HOST | cut -d / -f 3`
export SNIPPET_PRODUCT_NAME=${SNIPPET_PRODUCT_NAME:-"%NAME%"}

cat $PREFS_PATH | envsubst | sponge $PREFS_PATH

./firefox --no-remote $@
