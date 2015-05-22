#!/usr/bin/env bash

NO_CACHE="${1:-false}"

docker build --no-cache="${NO_CACHE}" --tag=docker.rodeopartners.com/rust:stable-squeeze squeeze
docker build --no-cache="${NO_CACHE}" --tag=docker.rodeopartners.com/rust:stable-wheezy wheezy
docker build --no-cache="${NO_CACHE}" --tag=docker.rodeopartners.com/rust:stable-jessie jessie
docker tag -f docker.rodeopartners.com/rust:stable-jessie docker.rodeopartners.com/rust:stable
docker tag -f docker.rodeopartners.com/rust:stable docker.rodeopartners.com/rust:latest
