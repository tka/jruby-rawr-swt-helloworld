#!/bin/sh
rm `pwd`/lib/java/swt*
ln -sf `pwd`/lib/swt/swt_osx64.jar `pwd`/lib/java
rake rawr:clean
rake rawr:jar
java -jar -XstartOnFirstThread package/jar/jruby-rawr-swt-helloworld.jar
