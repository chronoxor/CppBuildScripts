#!/bin/bash
cd ..
mkdir -p build
cd build
cmake -DCMAKE_LEGACY_CYGWIN_WIN32=0 -DCMAKE_BUILD_TYPE=RelWithDebInfo -G "Unix Makefiles" ..
cd ../scripts
