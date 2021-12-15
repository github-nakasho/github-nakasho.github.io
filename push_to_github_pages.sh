#!/bin/sh

git push origin master
git checkout --orphan gh-pages
git checkout master
git subtree push --prefix _site origin gh-pages
