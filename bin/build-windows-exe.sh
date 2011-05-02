#!/bin/sh
rake rawr:clean
rake rawr:jar
mkdir -p package/windows/package/windows
rake rawr:bundle:exe
cp -R lib/ruby package/windows/lib
cp -R lib/swt/swt_win32.jar package/windows/lib/java
mv package/windows/package/windows/*.exe package/windows
rm -rf package/windows/package

