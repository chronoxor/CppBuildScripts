#!/bin/bash
set -e
cd ../..
mkdir -p temp
cd temp
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_INSTALL_PREFIX=../temp/install -G "Unix Makefiles" ..
cd ../build/Cygwin
