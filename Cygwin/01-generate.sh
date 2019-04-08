#!/bin/bash
set -e
tar -C / -xvf cmake-3.13.1-1.tar.xz
cd ../..
mkdir -p temp
cd temp
cmake -DOPENSSL_ROOT_DIR=/usr/local/ssl -DOPENSSL_LIBRARIES=/usr/local/ssl/lib -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_INSTALL_PREFIX=../temp/install -G "Unix Makefiles" ..
cd ../build/Cygwin
