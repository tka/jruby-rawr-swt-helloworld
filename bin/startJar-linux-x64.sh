#!/bin/sh
if [ "$1" = "full" ]; then
  rm `pwd`/lib/java/swt*
  ln -sf `pwd`/lib/swt/swt_linux64.jar `pwd`/lib/java
  rake rawr:clean
fi
rake rawr:jar
java -jar package/jar/jruby-rawr-swt-helloworld.jar
