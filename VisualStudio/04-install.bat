@echo off
cd ../..
cd temp
MSBuild INSTALL.vcxproj -maxcpucount:4 -property:Configuration=RelWithDebInfo
if %errorlevel% neq 0 exit /b %errorlevel%
cd ../build/VisualStudio
