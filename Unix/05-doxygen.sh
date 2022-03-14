#!/bin/bash
cd ../../documents
remote=`git config --get remote.origin.url`
remote="https://${GITHUB_ACTOR}:${GITHUB_TOKEN}@${remote#https://}"
git clone --depth=5 -b gh-pages ${remote} html
cd ../temp
make -j8 doxygen
cd ../documents/html
git add -A .
git commit -am "Update generated documentation"
git push ${remote}
cd ../../build/Unix
