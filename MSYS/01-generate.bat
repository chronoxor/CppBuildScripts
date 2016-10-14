cd ../..
if not exist "temp" mkdir temp
cd temp
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo -G "MSYS Makefiles" ..
if %errorlevel% neq 0 exit /b %errorlevel%
cd ../build/MSYS
