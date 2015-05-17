#!/usr/bin/env bash

docker build --tag=docker.rodeopartners.com/rust:beta-squeeze squeeze
docker build --tag=docker.rodeopartners.com/rust:beta-wheezy wheezy
docker build --tag=docker.rodeopartners.com/rust:beta-jessie jessie
docker tag -f docker.rodeopartners.com/rust:beta-jessie docker.rodeopartners.com/rust:beta
