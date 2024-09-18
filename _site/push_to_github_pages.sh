#!/bin/sh

git config --global http.version HTTP/1.1
git config --global http.postBuffer 524288000
git config --global http.lowSpeedLimit 0
git config --global http.lowSpeedTime 999999
git push origin master
git checkout --orphan gh-pages
git checkout master
git subtree push --prefix _site origin gh-pages
