cd ../..
cd temp
make -j8 install
if %errorlevel% neq 0 exit /b %errorlevel%
cd ../build/MSYS
