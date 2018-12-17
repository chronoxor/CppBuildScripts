cd ../..
cd temp
MSBuild INSTALL.vcxproj /p:Configuration=RelWithDebInfo
if %errorlevel% neq 0 exit /b %errorlevel%
cd ../build/VisualStudio
