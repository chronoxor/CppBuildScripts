cd ../..
if not exist "temp" mkdir temp
cd temp
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo -G "MSYS Makefiles" ..
cd ../scripts/MSYS
