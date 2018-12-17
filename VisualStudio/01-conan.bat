cd ../..
if not exist "conan" mkdir conan
cd conan
conan install ..
if %errorlevel% neq 0 exit /b %errorlevel%
cd ../build/VisualStudio
