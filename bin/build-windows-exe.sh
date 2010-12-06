#!/bin/sh
rm `pwd`/lib/java/swt*
ln -sf `pwd`/lib/swt/swt_win32.jar `pwd`/lib/java
rake rawr:clean
rake rawr:jar
mkdir -p package/windows/package/windows
rake rawr:bundle:exe
cp -R lib/ruby package/windows/lib
mv package/windows/package/windows/*.exe package/windows
rm -rf package/windows/package

