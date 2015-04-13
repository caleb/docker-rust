#!/usr/bin/env bash

docker build --tag=docker.rodeopartners.com/rust:stable-squeeze squeeze
docker build --tag=docker.rodeopartners.com/rust:stable-wheezy wheezy
docker build --tag=docker.rodeopartners.com/rust:stable-jessie jessie
docker tag -f docker.rodeopartners.com/rust:stable-jessie docker.rodeopartners.com/rust:stable
docker tag -f docker.rodeopartners.com/rust:stable docker.rodeopartners.com/rust:latest
