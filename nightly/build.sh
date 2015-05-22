#!/usr/bin/env bash

NO_CACHE="${1:-false}"

docker build --no-cache="${NO_CACHE}" --tag=docker.rodeopartners.com/rust:nightly-squeeze squeeze
docker build --no-cache="${NO_CACHE}" --tag=docker.rodeopartners.com/rust:nightly-wheezy wheezy
docker build --no-cache="${NO_CACHE}" --tag=docker.rodeopartners.com/rust:nightly-jessie jessie
docker tag -f docker.rodeopartners.com/rust:nightly-jessie docker.rodeopartners.com/rust:nightly
