#!/bin/sh
rake rawr:clean
rake rawr:jar
rake rawr:bundle:app
cp -R lib/ruby package/osx/jruby-rawr-swt-helloworld.app/Contents/Resources/ruby
mkdir package/osx/jruby-rawr-swt-helloworld.app/Contents/Resources/swt
cp lib/swt/swt_osx* package/osx/jruby-rawr-swt-helloworld.app/Contents/Resources/swt
cd package/osx/
zip -r jruby-rawr-swt-helloworld.app.zip jruby-rawr-swt-helloworld.app/
