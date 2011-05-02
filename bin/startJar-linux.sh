#!/bin/sh
if [ "$1" = "full" ]; then
  rake rawr:clean
fi
rake rawr:jar
java -jar package/jar/jruby-rawr-swt-helloworld.jar
