#!/usr/bin/env bash

docker push -t docker.rodeopartners.com/rust:squeeze
docker push -t docker.rodeopartners.com/rust:wheezy
docker push -t docker.rodeopartners.com/rust:jessie
docker push -t docker.rodeopartners.com/rust:latest
