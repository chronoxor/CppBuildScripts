cd ../../documents
for /F "tokens=* USEBACKQ" %%F in (`git config --get remote.origin.url`) do (set remote=%%F)
git clone --depth=5 -b gh-pages %remote% html
cd ../temp
"C:\Program Files (x86)\MSBuild\14.0\Bin\MSBuild.exe" doxygen.vcxproj /p:Configuration=RelWithDebInfo
cd ../documents/html
git add -A .
git commit -am "Update generated documentation"
set remote="https://%GITHUB_TOKEN%@%remote:https://=%"
git push %remote%
cd ../../build/VisualStudio
