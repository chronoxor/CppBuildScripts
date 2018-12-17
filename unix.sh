#!/bin/bash
set -e
cd Unix
./01-conan.sh
./02-generate.sh
./03-build.sh
./04-tests.sh
./05-install.sh
if [[ "$doxygen" ]]; then 
    ./06-doxygen.sh
fi
