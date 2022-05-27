@echo off

rem Setup git remote parameter
for /F "tokens=* USEBACKQ" %%F in (`git config --get remote.origin.url`) do (set remote=%%F)
set remote="https://%GITHUB_ACTOR%:%GITHUB_TOKEN%@%remote:https://=%"

rem Generate documentation
cd ../../documents
git clone --depth=5 -b gh-pages %remote% html
cd ../temp
MSBuild doxygen.vcxproj -maxcpucount:4 -property:Configuration=RelWithDebInfo
if %errorlevel% neq 0 exit /b %errorlevel%
cd ../documents/html
git add -A .
git commit -am "Update generated documentation"
git push %remote%
cd ../../build/VisualStudio
