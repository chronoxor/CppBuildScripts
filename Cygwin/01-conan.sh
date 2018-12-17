#!/bin/bash
set -e
cd ../..
mkdir -p conan
cd conan
conan install ..
cd ../build/Cygwin
