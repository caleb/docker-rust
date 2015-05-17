#!/usr/bin/env bash

cd stable
./build.sh
cd ..

cd beta
./build.sh
cd ..

cd nightly
./build.sh
cd ..
