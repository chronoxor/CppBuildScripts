@echo off
cd ../..
cd temp
mingw32-make -j all
if %errorlevel% neq 0 exit /b %errorlevel%
cd ../build/MinGW
