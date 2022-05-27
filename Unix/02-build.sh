#!/bin/bash
set -e
cd ../..
cd temp
make -j4 all
cd ../build/Unix
