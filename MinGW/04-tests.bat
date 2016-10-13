cd ../..
cd build
ctest -V
if %errorlevel% neq 0 exit /b %errorlevel%
cd ../scripts/MinGW
