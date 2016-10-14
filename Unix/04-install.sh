#!/bin/bash
set -e
cd ../..
cd temp
make -j8 install
cd ../build/Unix
