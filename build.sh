#!/usr/bin/env bash

NO_CACHE="${1:-false}"

cd stable
./build.sh $NO_CACHE
cd ..

cd beta
./build.sh $NO_CACHE
cd ..

cd nightly
./build.sh $NO_CACHE
cd ..
