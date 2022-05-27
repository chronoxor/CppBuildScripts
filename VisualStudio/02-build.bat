@echo off
cd ../..
cd temp
MSBuild ALL_BUILD.vcxproj -maxcpucount:4 -property:Configuration=RelWithDebInfo
if %errorlevel% neq 0 exit /b %errorlevel%
cd ../build/VisualStudio
