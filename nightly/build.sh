#!/usr/bin/env bash

NO_CACHE="${1:-false}"

docker build --no-cache="${NO_CACHE}" --tag=caleb/rust:nightly-squeeze squeeze
docker build --no-cache="${NO_CACHE}" --tag=caleb/rust:nightly-wheezy wheezy
docker build --no-cache="${NO_CACHE}" --tag=caleb/rust:nightly-jessie jessie
docker tag -f caleb/rust:nightly-jessie caleb/rust:nightly
