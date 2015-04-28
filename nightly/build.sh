#!/usr/bin/env bash

docker build --tag=docker.rodeopartners.com/rust:nightly-squeeze squeeze
docker build --tag=docker.rodeopartners.com/rust:nightly-wheezy wheezy
docker build --tag=docker.rodeopartners.com/rust:nightly-jessie jessie
docker tag -f docker.rodeopartners.com/rust:nightly-jessie docker.rodeopartners.com/rust:nightly
