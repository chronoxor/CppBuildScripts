cd ../documents
for /F "tokens=* USEBACKQ" %%F in (`git config --get remote.origin.url`) do (set remote=%%F)
git clone --depth=5 -b gh-pages %remote% html
cd ../build
mingw32-make -j8 doxygen
cd ../documents/html
git add -A .
git commit -am "Update generated documentation"
git push %remote%
cd ../../scripts
