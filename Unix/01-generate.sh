#!/bin/bash
set -e
cd ../..
mkdir -p temp
cd temp
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo -G "Unix Makefiles" ..
cd ../build/Unix
