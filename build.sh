#!/usr/bin/env bash

docker build --tag=docker.rodeopartners.com/rust:squeeze squeeze
docker build --tag=docker.rodeopartners.com/rust:wheezy wheezy
docker build --tag=docker.rodeopartners.com/rust:jessie jessie
docker tag -f docker.rodeopartners.com/rust:jessie docker.rodeopartners.com/rust:latest
