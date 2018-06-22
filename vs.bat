cd VisualStudio
call 01-generate.bat
if %errorlevel% neq 0 exit /b %errorlevel%
call 02-build.bat
if %errorlevel% neq 0 exit /b %errorlevel%
call 03-tests.bat
if %errorlevel% neq 0 exit /b %errorlevel%
call 04-install.bat
if %errorlevel% neq 0 exit /b %errorlevel%
#call 05-doxygen.bat
#if %errorlevel% neq 0 exit /b %errorlevel%
