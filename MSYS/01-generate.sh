#!/bin/bash
set -e
cd ../..
mkdir -p temp
cd temp
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../temp/install -G "MSYS Makefiles" ..
cd ../build/MSYS
