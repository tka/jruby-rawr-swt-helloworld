#!/bin/sh
rm `pwd`/lib/java/swt*
ln -sf `pwd`/lib/swt/swt_osx64.jar `pwd`/lib/java
rake rawr:clean
rake rawr:jar
rake rawr:bundle:app
cp Info.plist.new package/osx/jruby-rawr-swt-helloworld.app/Contents/Info.plist
cp -R lib/ruby package/osx/jruby-rawr-swt-helloworld.app/Contents/Resources/Ruby
cd package/osx/
zip -r jruby-rawr-swt-helloworld.app.zip jruby-rawr-swt-helloworld.app/
