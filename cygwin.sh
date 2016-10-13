#!/bin/bash
cd Cygwin
./01-submodules.sh
./02-generate.sh
./03-build.sh
./04-tests.sh
./05-install.sh
./06-doxygen.sh
