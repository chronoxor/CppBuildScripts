#!/bin/bash
cd ../..

# Setup git remote parameter
remote=`git config --get remote.origin.url`
remote="https://${GITHUB_ACTOR}:${GITHUB_TOKEN}@${remote#https://}"

# Generate documentation
cd documents
git clone --depth=5 -b gh-pages ${remote} html
cd ../temp
make -j4 doxygen
cd ../documents/html
git add -A .
git commit -am "Update generated documentation"
git push ${remote}
cd ../../build/Unix
