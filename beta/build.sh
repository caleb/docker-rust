#!/usr/bin/env bash

NO_CACHE="${1:-false}"

docker build --no-cache="${NO_CACHE}" --tag=docker.rodeopartners.com/rust:beta-squeeze squeeze
docker build --no-cache="${NO_CACHE}" --tag=docker.rodeopartners.com/rust:beta-wheezy wheezy
docker build --no-cache="${NO_CACHE}" --tag=docker.rodeopartners.com/rust:beta-jessie jessie
docker tag -f docker.rodeopartners.com/rust:beta-jessie docker.rodeopartners.com/rust:beta
