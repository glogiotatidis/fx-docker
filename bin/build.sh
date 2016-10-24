#!/bin/bash
set -xe

VERSIONS_URL="https://product-details.mozilla.org/1.0/firefox_history_major_releases.json"
for i in `curl ${VERSIONS_URL} | jq -r 'keys[] ' | sort -n | tail -n+7`;
do
    git checkout firefox-$i
    docker build -t firefox-$i .
done
