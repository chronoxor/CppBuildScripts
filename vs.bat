cd VisualStudio
call 01-conan.bat
if %errorlevel% neq 0 exit /b %errorlevel%
call 02-generate.bat
if %errorlevel% neq 0 exit /b %errorlevel%
call 03-build.bat
if %errorlevel% neq 0 exit /b %errorlevel%
call 04-tests.bat
if %errorlevel% neq 0 exit /b %errorlevel%
call 05-install.bat
if %errorlevel% neq 0 exit /b %errorlevel%
IF DEFINED doxygen call 06-doxygen.bat
if %errorlevel% neq 0 exit /b %errorlevel%
