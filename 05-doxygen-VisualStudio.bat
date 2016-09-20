cd ../documents
FOR /F "tokens=* USEBACKQ" %%F IN (`git config --get remote.origin.url`) DO (SET remote=%%F)
git clone --depth=5 -b gh-pages %remote% html
cd ../build
"C:\Program Files (x86)\MSBuild\14.0\Bin\MSBuild.exe" doxygen.vcxproj /p:Configuration=RelWithDebInfo
cd ../documents/html
git add -A .
git commit -am "Update generated documentation"
git push %remote%
cd ../../scripts
