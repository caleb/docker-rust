#!/usr/bin/env bash

NO_CACHE="${1:-false}"

docker build --no-cache="${NO_CACHE}" --tag=caleb/rust:stable-squeeze squeeze
docker build --no-cache="${NO_CACHE}" --tag=caleb/rust:stable-wheezy wheezy
docker build --no-cache="${NO_CACHE}" --tag=caleb/rust:stable-jessie jessie
docker tag -f caleb/rust:stable-jessie caleb/rust:stable
docker tag -f caleb/rust:stable caleb/rust:latest
