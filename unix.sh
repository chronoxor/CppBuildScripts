#!/bin/bash
set -e
cd Unix
./01-generate.sh
./02-build.sh
./03-tests.sh
./04-install.sh
[ -z "$doxygen" ] && ./05-doxygen.sh
