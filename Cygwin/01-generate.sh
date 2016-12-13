#!/bin/bash
set -e
cd ../..
mkdir -p temp
cd temp
cmake -DCMAKE_LEGACY_CYGWIN_WIN32=0 -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_INSTALL_PREFIX=../temp/install -G "Unix Makefiles" ..
cd ../build/Cygwin
