#!/bin/bash
set -xe
git checkout firefox-base

VERSIONS_URL="https://viewvc.svn.mozilla.org/vc/libs/product-details/json/firefox_history_major_releases.json?view=co"
for i in `curl ${VERSIONS_URL} | jq -r 'keys[] ' | sort -n | tail -n+7`;
do
    git branch -D firefox-$i || true # Ignore error if branch does not exist.
    ./bin/add-version.sh $i
done
git checkout firefox-base
