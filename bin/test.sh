#!/bin/bash
set -xe

VERSIONS_URL="https://viewvc.svn.mozilla.org/vc/libs/product-details/json/firefox_history_major_releases.json?view=co"

# Start testing from Firefox 15
for i in `curl ${VERSIONS_URL} | jq -r 'keys[] ' | sort -n | tail -n+18`;
do
    echo "Testing Version $i"
    ./bin/run.sh $i
done
