#!/bin/bash
set -xe

git checkout -b firefox-$1 firefox-base
sed -i "s/ENV VERSION BASE/ENV VERSION $1/" Dockerfile
git add Dockerfile
git commit -m "Add version $1."
