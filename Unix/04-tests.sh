#!/bin/bash
cd ../..
cd temp
set -e
ctest -V
cd ../build/Unix
