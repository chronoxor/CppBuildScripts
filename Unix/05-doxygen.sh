#!/bin/bash

# Setup git remote parameter
remote=`git config --get remote.origin.url`
remote="https://${GITHUB_ACTOR}:${GITHUB_TOKEN}@${remote#https://}"

# Generate documentation
cd ../../documents
git clone --depth=5 -b gh-pages ${remote} html
cd ../temp
make -j8 doxygen
cd ../documents/html
git add -A .
git commit -am "Update generated documentation"
git push ${remote}
cd ../../build/Unix
