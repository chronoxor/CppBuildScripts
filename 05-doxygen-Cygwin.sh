cd ../documents
remote=`git config --get remote.origin.url`
git clone --depth=5 -b gh-pages $remote html
cd ../build
make -j8 doxygen
cd ../documents/html
git add -A .
git commit -am "Update generated documentation"
git push $remote
cd ../../scripts
