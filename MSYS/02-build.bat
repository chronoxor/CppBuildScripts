cd ../..
cd temp
make -j8 all
if %errorlevel% neq 0 exit /b %errorlevel%
cd ../build/MSYS
