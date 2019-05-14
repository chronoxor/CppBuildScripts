@echo off
cd ../..
cd temp
ctest -V -C RelWithDebInfo
if %errorlevel% neq 0 exit /b %errorlevel%
cd ../build/VisualStudio
