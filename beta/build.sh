#!/usr/bin/env bash

NO_CACHE="${1:-false}"

docker build --no-cache="${NO_CACHE}" --tag=caleb/rust:beta-squeeze squeeze
docker build --no-cache="${NO_CACHE}" --tag=caleb/rust:beta-wheezy wheezy
docker build --no-cache="${NO_CACHE}" --tag=caleb/rust:beta-jessie jessie
docker tag -f caleb/rust:beta-jessie caleb/rust:beta
