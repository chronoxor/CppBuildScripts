#!/bin/bash
cd ../..
mkdir -p temp
cd temp
cmake -DCMAKE_LEGACY_CYGWIN_WIN32=0 -DCMAKE_BUILD_TYPE=RelWithDebInfo -G "Unix Makefiles" ..
cd ../build/Cygwin
