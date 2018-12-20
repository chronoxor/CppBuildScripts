@echo off
cd ../..
cd temp
ctest -V
if %errorlevel% neq 0 exit /b %errorlevel%
cd ../build/MinGW
