#!/bin/bash
set -e
cd ../..
cd temp
make -j8 all
cd ../build/Unix
