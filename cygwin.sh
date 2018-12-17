#!/bin/bash
set -e
cd Cygwin
./01-generate.sh
./02-build.sh
./03-tests.sh
./04-install.sh
if [[ "$doxygen" ]]; then
    ./05-doxygen.sh
fi
