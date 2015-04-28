#!/usr/bin/env bash

cd stable
./push.sh
cd ..

cd nightly
./push.sh
cd ..
