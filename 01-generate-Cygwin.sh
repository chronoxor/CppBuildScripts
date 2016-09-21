#!/bin/bash
cd ..
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo -G "Unix Makefiles" ..
cd ../scripts
