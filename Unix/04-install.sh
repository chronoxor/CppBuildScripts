#!/bin/bash
set -e
cd ../..
cd temp
make -j4 install
cd ../build/Unix
