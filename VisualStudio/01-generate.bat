cd ../..
if not exist "temp" mkdir temp
cd temp
cmake -G "Visual Studio 14 2015 Win64" ..
if %errorlevel% neq 0 exit /b %errorlevel%
cd ../build/VisualStudio