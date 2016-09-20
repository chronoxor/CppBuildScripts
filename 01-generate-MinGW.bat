cd ..
if not exist "build" mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo -G "MinGW Makefiles" ..
cd ../scripts
