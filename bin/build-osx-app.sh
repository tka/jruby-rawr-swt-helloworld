#!/bin/sh
rake rawr:clean
rake rawr:jar
rake rawr:bundle:app
cp Info.plist.new package/osx/jruby-rawr-swt-helloworld.app/Contents/Info.plist
cp -R lib/ruby package/osx/jruby-rawr-swt-helloworld.app/Contents/Resources/Ruby
cp `pwd`/lib/swt/swt_osx* package/osx/jruby-rawr-swt-helloworld.app/Contents/Resources/Java/lib/java
cd package/osx/
zip -r jruby-rawr-swt-helloworld.app.zip jruby-rawr-swt-helloworld.app/
