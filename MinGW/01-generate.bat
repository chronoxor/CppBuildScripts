@echo off
cd ../..
if not exist "temp" mkdir temp
cd temp
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_INSTALL_PREFIX=../temp/install -G "MinGW Makefiles" ..
if %errorlevel% neq 0 exit /b %errorlevel%
cd ../build/MinGW
