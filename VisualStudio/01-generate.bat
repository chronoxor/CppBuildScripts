@echo off
cd ../..
if not exist "temp" mkdir temp
cd temp
cmake -DCMAKE_INSTALL_PREFIX=../temp/install -G "Visual Studio 17 2022" -A x64 ..
if %errorlevel% neq 0 exit /b %errorlevel%
cd ../build/VisualStudio
