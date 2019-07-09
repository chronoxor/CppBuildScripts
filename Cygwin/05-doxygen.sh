#!/bin/bash
cd ../../documents
remote=`git config --get remote.origin.url`
git clone --depth=5 -b gh-pages ${remote} html
cd ../temp
make -j doxygen
cd ../documents/html
git add -A .
git commit -am "Update generated documentation"
remote="https://${GITHUB_TOKEN}@${remote#https://}"
git push ${remote}
cd ../../build/Cygwin
