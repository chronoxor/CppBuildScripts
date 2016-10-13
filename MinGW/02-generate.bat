cd ../..
if not exist "temp" mkdir temp
cd temp
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo -G "MinGW Makefiles" ..
cd ../build/MinGW
