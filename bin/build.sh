#!/bin/bash
set -xe

VERSIONS_URL="https://viewvc.svn.mozilla.org/vc/libs/product-details/json/firefox_history_major_releases.json?view=co"
for i in `curl ${VERSIONS_URL} | jq -r 'keys[] ' | sort -n | tail -n+7`;
do
    git checkout firefox-$i
    docker build -t firefox-$i .
done
